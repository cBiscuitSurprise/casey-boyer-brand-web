import 'package:flutter/material.dart';

class ContactUsWidgetSuccess extends StatelessWidget {
  const ContactUsWidgetSuccess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 48, right: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.task_alt),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                        "Thank you for submitting your info! We'll get back to you as soon as we can!"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pop({"state": "success"});
                  },
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
