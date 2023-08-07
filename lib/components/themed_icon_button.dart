import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThemedIconButton extends StatelessWidget {
  final String url;
  final String imagePath;
  final String? darkImagePath;

  const ThemedIconButton(
      {Key? key,
      required this.url,
      required this.imagePath,
      this.darkImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        launchUrl(Uri.parse(url));
      },
      behavior: HitTestBehavior.translucent,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: AbsorbPointer(
          child: Container(
            width: 32,
            height: 32,
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(2)),
              color: (darkImagePath == null)
                  ? ((Theme.of(context).brightness == Brightness.dark)
                      ? (Theme.of(context).colorScheme.primary)
                      : null)
                  : null,
            ),
            child: Image(
              image: AssetImage(
                  (Theme.of(context).brightness == Brightness.dark)
                      ? darkImagePath ?? imagePath
                      : imagePath),
            ),
          ),
        ),
      ),
    );
  }
}
