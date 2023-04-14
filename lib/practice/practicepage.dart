import "package:flutter/material.dart";
import "package:flutter_app/homepage/homepage.dart";
import "package:flutter_app/practice/textwidget.dart";
import "package:flutter_app/widgets/Common_Drawer.dart";
import "package:get/get.dart";
import "/widgets/Custom_Appbar.dart";

class Practicepage extends StatelessWidget {
  const Practicepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CommonDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppbar("PRACTICE"),
      ),
      body: Textwidget(),
    );
  }
}
