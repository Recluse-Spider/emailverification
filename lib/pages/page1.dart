import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

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
            "Introduction to java ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "Java is high level, mordern programmin language designed in the early 1990's by Sun Microsystems nd currently owned by Oracle\n\n "
                    "Java is Platform Independent, which means that you only need to write the program once to be able to run it on a number of different platforms! Java is portable, robust, and dynamic, with the"
                    "ability to fit the needs of virtually any type of application."),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "More than 3 billion deices run Java.\n Java is used to develop aps for Google's android os, various Desktop Applications, such as media players, antivirus programs, Web Applications, Enterprise Applications"
                    "and many more!"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
