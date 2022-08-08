import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade200,
      appBar: AppBar(),
      body: Column(
        children: const [
          Text('Java comments',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'The purpose of including comments in your code is to explain what the code is doing.\n Java supports both single and multi-line comments. All characters that appear within a comment are '
                    'ignored by the java compiler. \n\n'
                    'A single line comment starts with two forward slashes and continues until it reaches the end of the line.'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
