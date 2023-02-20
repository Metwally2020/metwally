import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/sure.dart';

// ignore: must_be_immutable
class ContactChanelCard extends StatelessWidget {
  String platform;
  Uri url;
BuildContext mainContext;
  ContactChanelCard({
    Key? key,
    required this.platform,
    required this.url,
    required this.mainContext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              //sending the first page context to the second screen
              mainContext,
              MaterialPageRoute(
                  builder: (context) => Sure(platform: platform, url: url,mainContext: context,)),
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
