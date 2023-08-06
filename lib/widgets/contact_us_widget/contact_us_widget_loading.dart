import 'package:flutter/material.dart';

class ContactUsWidgetLoading extends StatelessWidget {
  const ContactUsWidgetLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
