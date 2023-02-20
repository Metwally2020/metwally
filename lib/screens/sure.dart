import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/platform.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Sure extends StatelessWidget {
  String platform;
  Uri url;
  BuildContext mainContext;
  Sure({
    super.key,
    required this.platform,
    required this.url,
    required this.mainContext,
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
              backgroundColor: MaterialStateProperty.all(Colors.green),
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 30),
              ),
            ),
            onPressed: () {
              // sending the first page's context to the 3ed page
              Navigator.push(
                mainContext,
                MaterialPageRoute(
                    builder: (context) => PlatformScreen(
                          platform: platform,
                          url: url,
                        )),
              );
            },
            child: Text('$platform Sure!')),
      ),
    );
  }
}
