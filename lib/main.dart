import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/portrait.PNG'),
                  ),
                  TyperAnimatedTextKit(
                    text: ['Laura Trivino'],
                    isRepeatingAnimation: false,
                    textStyle: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'SOFTWARE ENGINEER',
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(width: 20.0, height: 100.0),
                      Text(
                        "I'm",
                        style: TextStyle(fontSize: 35.0),
                      ),
                      SizedBox(width: 20.0, height: 100.0),
                      RotateAnimatedTextKit(
                          onTap: () {
                            print("Tap Event");
                          },
                          text: ["AWESOME", "OPTIMISTIC", "FAN OF PIZZA"],
                          textStyle:
                              TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
                          textAlign: TextAlign.start,
                          alignment: AlignmentDirectional
                              .topStart // or Alignment.topLeft
                          ),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                    height: 20,
                    child: Divider(
                      color: Colors.blue.shade50,
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: Card(
                      color: Colors.white,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.blue.shade500,
                        ),
                        title: Text(
                          '+331 23 45 67 89',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: Card(
                      color: Colors.white,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.blue.shade500,
                        ),
                        title: Text(
                          'my.email@mail.fr',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
