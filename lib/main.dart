import 'package:flutter/material.dart';

import 'screens/my_contact_screen.dart';
import 'screens/platform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyContactScreen(),
    );
  }
}