import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../platform.dart';

class ContactChanelCard extends StatelessWidget {
  String platform;
  Uri url;

  ContactChanelCard({
    Key? key,
    required this.platform,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PlatformScreen(platform: platform, url: url)),
            );
          },
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(
              'assets/$platform.png',
            ),
          ),
        ),
      ],
    );
  }
}
