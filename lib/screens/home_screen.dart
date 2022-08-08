import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emailpas/model/user_model.dart';
import 'package:emailpas/pages/page1.dart';
import 'package:emailpas/pages/page2.dart';
import 'package:emailpas/pages/page3.dart';
import 'package:emailpas/pages/page4.dart';
import 'package:emailpas/pages/page5.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

/*class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return StepperT(); */ /*Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${loggedInUser.firstName} ${loggedInUser.secondName}",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500),
              ),
              Text(
                "${loggedInUser.email}",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              ActionChip(
                  label: Text("Log Out"),
                  onPressed: () {
                    logout(context);
                  })
            ],
          ),
        ),
      ),
    );*/ /*
  }
}*/
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Icon(Icons.logout),
              TextButton(
                  onPressed: () {
                    logout(context);
                  },
                  child: Text("Log Out"))
            ],
          )
        ],
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (con, index) {
            int max = 0;
            max = index;
            return StepperT(); /* Row(
              children: [
                Column(
                  children: [
                    Container(width: 2, height: 40, color: Colors.red),
                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(Icons.create),
                    ),
                    Container(width: 2, height: 50, color: Colors.black)
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        border: Border(
                            top:
                                BorderSide(width: 4, color: Colors.blueAccent)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.blue,
                          )
                        ],
                        color: Colors.white),
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title $max',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Description $max',
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );*/
          }),
    );
  }
}

class StepperT extends StatefulWidget {
  const StepperT({Key? key}) : super(key: key);

  @override
  _StepperTState createState() => _StepperTState();
}

class _StepperTState extends State<StepperT> {
  int currentStep = 6;
  String les = 'Lesson';
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    print(
        "this is the dart vale login ${int.parse(loggedInUser.secondName ?? '0')}");
    // return Stepper(
    //   physics: ScrollPhysics(),
    //   controlsBuilder: (context, {onStepContinue, onStepCancel}) {
    //     return Container();
    //   },
    //   steps: getSteps(),
    //   currentStep: currentStep,
    //   onStepContinue: () {
    //     final isLastStep = currentStep == getSteps().length - 1;
    //     if (isLastStep) {
    //       print('completed');
    //     }
    //     setState(() {
    //       currentStep += 1;
    //     });
    //   },
    //   onStepCancel: () {
    //     setState(() {
    //       currentStep -= 1;
    //     });
    //   },
    //   onStepTapped: (step) {
    //     setState(() {
    //       currentStep = step;
    //     });
    //   },
    // );
    return Scaffold();
  }

  List<Step> getSteps() => [
        Step(
          subtitle: Text('Introduction to Java'),
          state: int.parse(loggedInUser.secondName!) > 0
              ? StepState.complete
              : StepState.indexed,
          isActive: int.parse(loggedInUser.secondName!) >= 0,
          title: Text('1.1 $les'),
          content: SizedBox(
            height: 100,
            width: double.infinity,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page1()));
              },
              child: Card(
                color: Colors.blueAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('Java is a high level modern programing language\n'
                        'designed in the early 1990s by Sun Microsystems, and \n'
                        'currently owned by oracle....'),

                    /*  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Data1()));
                            },
                            child: Text("click here for more"))
                      ],
                    )*/
                  ],
                ),
              ),
            ),
          ),
        ),
        Step(
            subtitle: const Text('Comments'),
            state: int.parse(loggedInUser.secondName!) > 1
                ? StepState.complete
                : StepState.indexed,
            isActive: int.parse(loggedInUser.secondName!) > 1,
            title: Text('2.1 $les'),
            content: SizedBox(
              height: 100,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page2()));
                },
                child: Card(
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'A single line comment starts with two '),
                          TextSpan(
                              text: 'forward slashes(//) ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'Multiline comments starts with '),
                          TextSpan(
                              text: 'forward slash followed by an asterisk(/*)',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'and end with an '),
                          TextSpan(
                              text:
                                  'asterisk followed by a forward slash(*/) ....',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ])),
                      ],
                    ),
                  ),
                ),
              ),
            )),
        Step(
            subtitle: Text('3.1 $les'),
            state: int.parse(loggedInUser.secondName!) > 2
                ? StepState.complete
                : StepState.indexed,
            isActive: int.parse(loggedInUser.secondName!) > 2,
            title: const Text('Variables'),
            content: SizedBox(
              height: 104,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page3()));
                },
                child: Card(
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            'Variales store date for processing ,A variable is the name of a reserved area allocated in memory. In other words, it is a name of the memory location....')
                      ],
                    ),
                  ),
                ),
              ),
            )),
        Step(
            state: int.parse(loggedInUser.secondName!) > 3
                ? StepState.complete
                : StepState.indexed,
            isActive: int.parse(loggedInUser.secondName!) > 3,
            title: const Text('Data types'),
            content: SizedBox(
              height: 104,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page4()));
                },
                child: Card(
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(text: 'Types of Variables\n'),
                          TextSpan(
                            text:
                                'byte,short\n int, long\nfloat,double\nboolean,char...',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]))
                      ],
                    ),
                  ),
                ),
              ),
            )),
        Step(
            state: int.parse(loggedInUser.secondName!) > 4
                ? StepState.complete
                : StepState.indexed,
            isActive: int.parse(loggedInUser.secondName!) > 4,
            title: const Text(' Arithmetic operators'),
            content: SizedBox(
              height: 104,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page1()));
                },
                child: Card(
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            '+  Addition\n - Subtraction\n * Multiplication \n / Division \n % Modulo Operation(Remainder after division)...')
                      ],
                    ),
                  ),
                ),
              ),
            )),
        Step(
          state: int.parse(loggedInUser.secondName!) > 5
              ? StepState.complete
              : StepState.indexed,
          isActive: int.parse(loggedInUser.secondName!) > 5,
          title: const Text('Conditional statement'),
          content: SizedBox(
            height: 104,
            width: double.infinity,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page5()));
              },
              child: Card(
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '< less than,  > greater than \n != not equal to , == equal to \n<= less than or equal to,  >=greater than or equal to',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Step(
            state: int.parse(loggedInUser.secondName!) > 6
                ? StepState.complete
                : StepState.indexed,
            isActive: int.parse(loggedInUser.secondName!) > 6,
            title: const Text('if statement'),
            content: SizedBox(
              height: 104,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page1()));
                },
                child: Card(
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            "If the if statement's condition expression evaluates to true, the block of code inside the if statement is executed,if the expresion is false the block of code is not executed... ")
                      ],
                    ),
                  ),
                ),
              ),
            )),
        Step(
            state: int.parse(loggedInUser.secondName!) > 7
                ? StepState.complete
                : StepState.indexed,
            isActive: int.parse(loggedInUser.secondName!) > 7,
            title: const Text('if statement'),
            content: SizedBox(
              height: 104,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page1()));
                },
                child: Card(
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            "If the if statement's condition expression evaluates to true, the block of code inside the if statement is executed,if the expresion is false the block of code is not executed... ")
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ];
}
