import 'package:flutter/material.dart';

class Textwidget extends StatefulWidget {
  const Textwidget({Key? key}) : super(key: key);

  @override
  State<Textwidget> createState() => _TextwidgetState();
}

class _TextwidgetState extends State<Textwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
      child: TextField(),
    );
  }
}
