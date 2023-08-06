import 'package:casey_boyer_brand_web/components/text/unordered_list_item.dart';
import 'package:casey_boyer_brand_web/widgets/toggle_switch/toggle_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/contact_us_widget/bloc/contact_us_widget_bloc.dart';
import '../widgets/contact_us_widget/contact_us_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: Row(children: [
              Expanded(
                child: Text(
                  "Casey Boyer",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              const ToggleSwitchWidget(),
              ElevatedButton(
                onPressed: () {
                  showDialog(context: context, builder: buildContactUsDialog);
                },
                child: const Text("Contact"),
              ),
            ]),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 16),
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
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/casey_headshot.jpg'),
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

  Widget buildContactUsDialog(context) {
    return BlocProvider<ContactUsWidgetBloc>(
      create: (context) => ContactUsWidgetBloc(),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600, maxHeight: 400),
          child: Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            elevation: 16,
            child: const ContactUsWidget(),
          ),
        ),
      ),
    );
  }
}
