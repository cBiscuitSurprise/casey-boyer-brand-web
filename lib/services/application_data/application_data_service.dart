import 'dart:convert';
import 'dart:html';
import 'dart:js_interop';

import 'package:casey_boyer_brand_web/model/user.dart';
import 'package:casey_boyer_brand_web/util/random_names.dart';
import 'package:logging/logging.dart';
import 'package:nanoid/async.dart';
// import 'package:path_provider/path_provider.dart';

Logger logger = Logger('user_bloc.dart');

const String userInfoFile = "user.txt";

const String userStorageKey = "userData";

class ApplicationDataService {
  final Storage _localStorage;

  ApplicationDataService() : _localStorage = window.localStorage;

  Future<User> getUserData() async {
    final userData = _localStorage[userStorageKey];

    User user;
    if (userData.isUndefinedOrNull) {
      // for now we just create a random guest user,
      // eventually we can add real user management
      logger.fine("Creating random user...");
      String randomUserId = await nanoid();
      String name = randomName();
      logger.finer("... id=$randomUserId, name=$name");

      user = User(id: randomUserId, name: name);

      _localStorage[userStorageKey] = json.encode(user.toJson());
    } else {
      user = User.fromJson(json.decode(userData!));
      logger.fine("found user, ${user.id}");
    }
    return user;
  }
}
