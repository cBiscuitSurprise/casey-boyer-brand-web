import 'dart:convert';

import 'package:casey_boyer_brand_web/services/casey_boyer_brand_api/models/projects_details.dart';
import 'package:casey_boyer_brand_web/services/casey_boyer_brand_api/models/projects_list.dart';
import 'package:logging/logging.dart';
import 'package:http/http.dart' as http;

import 'models/contact_submit.dart';
import 'models/strate_go_connect.dart';
import 'placeholder_projects_api.dart';

Logger logger = Logger('casey_boyer_brand_api_service.dart');

String truncateWith(int length, String myString, {String suffix = "..."}) {
  return (myString.length <= length)
      ? myString
      : "${myString.substring(0, length)}$suffix";
}

class CaseyBoyerBrandApiService {
  final Uri endpoint = Uri.parse("https://casey.boyer.consulting/api");

  Uri urlFor(String path) {
    return endpoint.replace(path: "${endpoint.path}$path");
  }

  // #region Contact
  Future<ContactSubmitResponse> contact(ContactSubmitRequest request) async {
    String body = jsonEncode(request);
    logger.fine("Submitting contact info: $body");

    http.Response response = await http.post(
      urlFor("/contact"),
      body: body,
      headers: {"Content-Type": "application/json"},
    );

    logger.finer(
        "Form submission response: ${response.statusCode} - ${truncateWith(256, response.body)}");

    if (response.statusCode >= 300) {
      return ContactSubmitResponse(
          success: false, message: "failed to submit info");
    } else {
      return ContactSubmitResponse(success: true);
    }
  }
  // #endregion Contact

  // #region Projects
  Future<ProjectsListResponse> listProjects(
      [ProjectsListRequest? request]) async {
    logger.fine("Listing projects");

    // TODO: get from API
    // http.Response response = await http.get(
    //   urlFor("/projects"),
    // );
    var response = http.Response(await listProjectsFromLocalFile(), 200);

    logger.finer(
        "Form submission response: ${response.statusCode} - ${truncateWith(256, response.body)}");

    if (response.statusCode >= 300) {
      return ProjectsListResponse(success: false);
    } else {
      return ProjectsListResponse.fromJson(json.decode(response.body));
    }
  }

  Future<ProjectGetDetailsResponse> getProjectDetails(
      ProjectGetDetailsRequest request) async {
    String body = jsonEncode(request);
    logger.fine("Getting project details for request: $body");

    // TODO: get from API
    // http.Response response = await http.get(
    //   urlFor("/projects/"),
    // );
    var responsePayload = await getProjectDetailsFromLocalFile(request.project);
    var response = http.Response(responsePayload, 200, headers: {
      "content-type": "application/json; charset=utf-8",
    });

    logger.finer(
        "Form submission response: ${response.statusCode} - ${truncateWith(256, response.body)}");

    if (response.statusCode >= 300) {
      return ProjectGetDetailsResponse(
          success: false,
          message:
              "failed to fetch details for project: ${request.project.id}");
    } else {
      return ProjectGetDetailsResponse.fromJson(json.decode(response.body));
    }
  }
  // #endregion Projects

  // #region Stratego
  Future<StrateGoConnectResponse> strateGoConnect(
      [StrateGoConnectRequest? request]) async {
    logger.fine("Fetching strate-go server");

    http.Response response = await http.get(
      urlFor("/strate-go/connect"),
    );

    logger.finer(
        "Form submission response: ${response.statusCode} - ${truncateWith(256, response.body)}");

    if (response.statusCode >= 300) {
      return StrateGoConnectResponse(success: false);
    } else {
      return StrateGoConnectResponse.fromJson(json.decode(response.body));
    }
  }
  // #endregion Stratego
}
