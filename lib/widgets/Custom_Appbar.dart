import "package:flutter/material.dart";

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  String appbarTitle = "";

  CustomAppbar({String appbarTitle = "", super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

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
