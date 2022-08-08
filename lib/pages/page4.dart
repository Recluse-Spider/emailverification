import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "Data types ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      'Variables have types. int ,double,float,char,boolean'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
