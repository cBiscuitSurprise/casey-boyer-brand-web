import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  final String message;

  const AppErrorWidget({
    Key? key,
    message,
  })  : message = message ?? 'Something went wrong',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: const TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
