import 'package:flutter/material.dart';

class SirScreen extends StatefulWidget {
  const SirScreen({Key? key}) : super(key: key);

  @override
  _SirScreenState createState() => _SirScreenState();
}

class _SirScreenState extends State<SirScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
          child: TextField(
        decoration: InputDecoration(hintText: "helo", label: Text("karl")),
        keyboardType: TextInputType.number,
        cursorColor: Colors.black,
      )),
    );
  }
}
