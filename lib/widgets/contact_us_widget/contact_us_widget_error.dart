import 'package:flutter/material.dart';

class ContactUsWidgetError extends StatelessWidget {
  final EdgeInsets _padding = const EdgeInsets.only(
    top: 12,
    bottom: 16,
    right: 24,
    left: 24,
  );

  const ContactUsWidgetError({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SimpleDialog(
        title: const Text("Uh oh!"),
        children: [
          buildMessage(context),
          buildButtons(context),
        ],
      ),
    );
  }

  Widget buildMessage(context) {
    return const Padding(
      padding: EdgeInsets.only(left: 48, right: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.task_alt),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                  "Looks like my API isn't work correctly. I'll get notified this didn't work, please come back and try again later. :("),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButtons(context) {
    return Padding(
      padding: _padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () async {
                Navigator.of(context).pop({"state": "close"});
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  foregroundColor: Theme.of(context).colorScheme.primary),
              child: const Text('Close'),
            ),
          ),
        ],
      ),
    );
  }
}
