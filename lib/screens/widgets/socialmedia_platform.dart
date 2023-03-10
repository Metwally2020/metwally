import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
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
          onTap: () async {
            await launchUrl(url, mode: LaunchMode.externalApplication);
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
