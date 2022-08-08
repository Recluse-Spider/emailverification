import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: const [
          Text(
            "Decision Making ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'Conditional statements are used to perform different actions based on different conditions.\n The if statement is one of the most frequently used conditional statements. If the '
                    'statements is executed. If the expression is found to bee false the first set of code after the end of the if statement (after the closing curly brace) is executed'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
