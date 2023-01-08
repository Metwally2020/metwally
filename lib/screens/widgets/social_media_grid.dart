import 'package:flutter/cupertino.dart';

import 'socialmedia_platform.dart';

class SocialMediaGrid extends StatelessWidget {
  const SocialMediaGrid({
    Key? key,
    required this.myContacts,
  }) : super(key: key);

  final Map myContacts;

  @override
  Widget build(BuildContext context) {
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
        );
      },
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.symmetric(vertical: 20),
    );
  }
}
