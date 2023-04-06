import "package:flutter/material.dart";
import "homepage/homepage.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String buttonText = "Click";
  String onClickMessage = "the button was clicked";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Homepage(),
      },
    );
  }
}
