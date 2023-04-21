import "package:flutter/material.dart";
import "package:flutter_app/homepage/homepage.dart";
import "package:flutter_app/modules/users/screens/user.screen.dart";
import "package:flutter_app/practice/practicepage.dart";
import "package:get/get.dart";

class CommonDrawer extends StatelessWidget {
  CommonDrawer({Key? key}) : super(key: key);

  final List pages = [
    {
      "pageTitle": "Home",
      "route": Homepage(),
    },
    {
      "pageTitle": "Practice",
      "route": Practicepage(),
    },
    {
      "pageTitle": "Users",
      "route": Users(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(
              color: Colors.red[900],
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  "NAVIGATION",
                  style: TextStyle(fontSize: 30.0, color: Colors.yellow),
                ),
              ),
            ),
          ),
          Container(
            height: double.maxFinite,
            child: ListView.builder(
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    pages[index]['pageTitle'],
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Get.to(pages[index]['route']);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
