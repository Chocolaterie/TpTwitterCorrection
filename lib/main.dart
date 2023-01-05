import 'package:flutter/material.dart';
import 'package:tp_twitter_correction/pages/login_page.dart';
import 'package:tp_twitter_correction/pages/twitter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        "/tweet-list-page": (context) => TwitterPage(),
      },
    );
  }
}
