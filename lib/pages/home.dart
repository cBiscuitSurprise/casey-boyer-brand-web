import 'package:casey_boyer_brand_web/components/text/unordered_list_item.dart';
import 'package:casey_boyer_brand_web/components/themed_icon_button.dart';
import 'package:casey_boyer_brand_web/pages/app_scaffold.dart';
import 'package:casey_boyer_brand_web/pages/routes.dart';
import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBarComponent(
        title: title,
        navigations: buildRoutes(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 16),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      // border: Border.all(),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset.fromDirection(1.2, 5),
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                            color: Color.fromARGB(127, 0, 0, 0))
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            (Theme.of(context).brightness == Brightness.dark)
                                ? 'images/casey_headshot_dark.png'
                                : 'images/casey_headshot.jpg'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Software Developer",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ThemedIconButton(
                          url:
                              "https://www.linkedin.com/in/casey-boyer-engineer/",
                          imagePath: "images/icons/LI-In-Bug.png",
                          darkImagePath: "images/icons/LI-In-Bug.png",
                        ),
                        ThemedIconButton(
                          url: "https://github.com/cBiscuitSurprise",
                          imagePath: "images/icons/github-mark.png",
                          darkImagePath: "images/icons/github-mark-white.png",
                        ),
                      ]),
                ),
                const FractionallySizedBox(
                  widthFactor: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 16),
                    child: Text(
                      "I'm building this site for a few reasons. The primary reason is to provide a sandbox for learning new languages and frameworks. It also serves to supplement my resume and LinkedIn profile during my job search to hopefully showcase my ability to organize and execute software projects. If you're still reading this, (thank you) check out the Projects section above for a few projects that I have worked on or am working on, including this site itself. Here's a few bullet points from my resume:",
                    ),
                  ),
                ),
                const FractionallySizedBox(
                  widthFactor: 0.6,
                  child: Column(children: [
                    UnorderedListItem(
                      text:
                          "Senior Software Engineer with over 10 years of experience in the industry.",
                    ),
                    UnorderedListItem(
                      text:
                          "Skilled in problem-solving and adapting to new technologies.",
                    ),
                    UnorderedListItem(
                      text:
                          "Highly self-motivated and dedicated to working with all stakeholders to deliver high-quality software solutions on time and under budget.",
                    ),
                    UnorderedListItem(
                      text:
                          "Strong communicator with great interpersonal skills, and I am comfortable talking to all levels to accomplish business objectives.",
                    ),
                  ]),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
