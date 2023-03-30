import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String buttonText = "Click";
  String onClickMessage = "the button was clicked";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello World"),
          backgroundColor: Colors.deepPurple[700],
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(buttonText),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Settings", icon: Icon(Icons.settings)),
            BottomNavigationBarItem(
                label: "Contacts", icon: Icon(Icons.contact_page)),
          ],
        ),
      ),
    );
  }
}
