import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/social_media_grid.dart';
import 'widgets/socialmedia_platform.dart';

class MyContactScreen extends StatelessWidget {
  final Uri phoneNumber = Uri.parse('tel:+201288220410');
  MyContactScreen({super.key});
  final Map myContacts = {
    'whatsapp' : Uri.parse('https://wa.me/201288220410'),
    'facebook' : Uri.parse('http://m.me/mahmoud.metwally007'),
    'youtube'  : Uri.parse('https://www.youtube.com/channel/UCkGm79_pM3zx5qhsjHebSSA'),
    'github'   : Uri.parse('https://github.com/Metwally2020'),
    'linkedin' : Uri.parse('https://www.linkedin.com/in/mahmoud-metwally-257111197/'),
    'instagram': Uri.parse('https://www.instagram.com/metwally2017/'),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      left: true,
      top: true,
      right: true,
      maintainBottomViewPadding: true,
      minimum: EdgeInsets.zero,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 7, 30),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(children: [
                SizedBox(height: 60),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/metwally.jpg',
                  ),
                  radius: 100,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Mahmoud Metwally',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '+201288220410',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 125, 125, 125)),
                    ),
                    IconButton(
                      onPressed: () async {
                        launchUrl(phoneNumber);
                      },
                      icon: Icon(Icons.phone),
                      iconSize: 30,
                      color: Color.fromARGB(255, 125, 125, 125),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SocialMediaGrid(myContacts: myContacts),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}