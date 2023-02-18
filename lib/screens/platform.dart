import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlatformScreen extends StatelessWidget {
  String platform;
  Uri url;
  PlatformScreen({
    super.key,
    required this.platform,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30),),),
            onPressed: () async {
              await launchUrl(url, mode: LaunchMode.externalApplication);
            },
            child: Text('Start $platform')),
      ),
    );
  }
}
