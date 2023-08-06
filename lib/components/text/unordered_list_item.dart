import 'package:flutter/material.dart';

class UnorderedListItem extends StatelessWidget {
  final String text;

  const UnorderedListItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 4),
            child: Icon(Icons.chevron_right),
          ),
          Flexible(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
