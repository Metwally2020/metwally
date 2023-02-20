import 'package:flutter/cupertino.dart';

import 'socialmedia_platform.dart';

class SocialMediaGrid extends StatelessWidget {
  BuildContext mainContext;
  SocialMediaGrid({
    Key? key,
    required this.myContacts,
    required this.mainContext,
  }) : super(key: key);

  final Map myContacts;

  @override
  Widget build(BuildContext PageContext) {
    return GridView.builder(
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, index) {
        return ContactChanelCard(
          platform: myContacts.keys.toList()[index],
          url: myContacts.values.toList()[index],
          //sending the first page context to the icon
          mainContext: mainContext,
        );
      },
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.symmetric(vertical: 20),
    );
  }
}
