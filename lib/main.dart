import "package:flutter/material.dart";
import "homepage/homepage.dart";
import "package:get/get.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String buttonText = "Click";
  String onClickMessage = "the button was clicked";

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Homepage(),
      },
    );
  }
}
