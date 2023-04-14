import "package:flutter/material.dart";

class CustomAppbar extends StatelessWidget {
  String appbarTitle = "";

  CustomAppbar(this.appbarTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appbarTitle,
        style: const TextStyle(color: Colors.yellow),
      ),
      backgroundColor: Colors.red[900],
    );
  }
}
