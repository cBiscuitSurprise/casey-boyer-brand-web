import 'dart:ui' as ui;
import 'dart:html';
import 'package:flutter/material.dart';

final String CLOUDWATCH_DASHBOARD =
    "https://cloudwatch.amazonaws.com/dashboard.html?dashboard=casey-boyer-brand-dev&start=PT72H&end=null&context=eyJSIjoidXMtZWFzdC0xIiwiRCI6ImN3LWRiLTM2NjA2OTYzNjQxNiIsIlUiOiJ1cy1lYXN0LTFfNndFTzdnRExtIiwiQyI6IjNqZ2w5dTluM2Fkbzgzb205aTUyb29uMmdlIiwiSSI6InVzLWVhc3QtMTpkN2M4YjI0ZC0yZjhmLTRlNjYtODIxNC1iM2ZjMzAwMzcxYTkiLCJNIjoiUHVibGljIn0=";

class ProjectBrandSite extends StatelessWidget {
  const ProjectBrandSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 8),
            child: Text("This site",
                style: Theme.of(context).textTheme.headlineMedium),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: Container(
              width: 600,
              height: 450,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset.fromDirection(1.2, 5),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                      color: const Color.fromARGB(127, 0, 0, 0))
                ],
                image: const DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("images/casey-boyer-brand-diagram.png"),
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.6,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                    "This site you're looking at runs on AWS. It's primarily composed of a flutter app stored in S3. The API component of this site is backed by AWS Serverless resources like Lambda and DynamoDB. The `/contact` API invokes a Lambda function which first adds a record to the contact table and then sends me an email with the information."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                    "Below is a live dashboard for this application. It shows the critical metrics we can use to evaluate the health of this site."),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: Container(
              width: 1200,
              height: 640,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: const BorderRadius.all(Radius.circular(2)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset.fromDirection(1.2, 5),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                      color: const Color.fromARGB(127, 0, 0, 0))
                ],
              ),
              child: buildDashboardIFrame(1200, 625),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDashboardIFrame(int width, int height) {
    final IFrameElement dashboardFrame = IFrameElement();
    dashboardFrame.width = width.toString();
    dashboardFrame.height = height.toString();
    dashboardFrame.src = CLOUDWATCH_DASHBOARD;
    dashboardFrame.style.border = 'none';
    dashboardFrame.style.overflow = 'hidden !important';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'dashboardFrame',
      (int viewId) => dashboardFrame,
    );

    return const HtmlElementView(
      viewType: 'dashboardFrame',
    );
  }
}
