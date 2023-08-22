import 'package:flutter/material.dart';
import 'package:mon_restaurant/models/url_class.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlButton extends StatelessWidget {
  final UrlClass urlClass;

  const UrlButton({super.key, required this.urlClass});

  @override
  Widget build(BuildContext context) {
    Uri uri = Uri.parse(urlClass.url);

    return TextButton(
      onPressed: () async {
        await canLaunchUrl(uri)
            ? launchUrl(uri, mode: LaunchMode.externalApplication)
            : throw "Impossible de lancer ${urlClass.name}";
      },
      child: Text(urlClass.name),
    );
  }
}
