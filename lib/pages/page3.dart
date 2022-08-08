import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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
            "Variables ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'Variables store data for processing.\n A variable is given a name (or identifier), such as area,age,height,and the like. The name uniquely identifies each variable,assigning a value to the variable and '
                    'retrieving the value stored.\n\n Variables have types. '),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
