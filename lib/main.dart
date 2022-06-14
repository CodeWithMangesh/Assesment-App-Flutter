import 'package:flutter/material.dart';
import 'package:happy/home_screen.dart';
import 'package:happy/login.dart';

void main() {
  runApp(Login());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text('Happiness Index app'),
        ),
        body: Center(
          // child: ElevatedButton(
          //   child: const Text('Start Test'),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) =>  Question1()),
          //     );
          //   },
          // ),
          child: Start(),
        ),
      ),
    );
  }
}
class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    //   return Container(
    //     // appBar: AppBar(
    //     //   title: Text('Self Assessment app'),
    //     // ),
    //
    //     child: Center(
    //       child: ElevatedButton(
    //         child: const Text('Start Test'),
    //         onPressed: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(builder: (context) =>  Question1()),
    //           );
    //         },
    //       ),
    //     ),
    //
    //
    //   );
    //
    // }
    return Scaffold(
      appBar: AppBar(title: Text('Happiness Index')),
      body: const Center(
        child: Text('Welcome Back!!'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(image: AssetImage("images/back.jpg"),fit:BoxFit.cover),

              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(Icons.quiz_outlined),
              title: const Text('Take Quiz'),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                                context,
                                 MaterialPageRoute(builder: (context) =>  Question1()),
                               );
              },
            ),
            ListTile(
              leading: const Icon(Icons.score_rounded),
              title: const Text('Result'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
//psychological well-being begin
class Question1 extends StatefulWidget {
  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  static int ans1=0;
  int get_ans1(){
    return ans1;
  }
  @override
  Widget build(BuildContext context) {

    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.lightBlueAccent.shade200
                  ]
              )
          ),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "I don't feel particularly healthy",
                      // questionBank[questionNumber].questionText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'All the time',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ans1 = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question2()),
                      );
                      print(ans1);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Most of the time',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans1 = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question2()),
                      );
                      print(ans1);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans1 = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question2()),
                      );
                      print(ans1);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'A few times',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans1 = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question2()),
                      );
                      print(ans1);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans1 = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question2()),
                      );
                      print(ans1);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        ));

  }
}
class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  static int ans2=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.lightGreenAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Overall how satisfied are you with your school life?",
                      // questionBank[questionNumber].questionText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Not satisfied',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ans2 = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question3()),
                      );
                      print(ans2);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'somewhat satisfied',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans2 = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question3()),
                      );
                      print(ans2);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Satisfied',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans2 = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question3()),
                      );
                      print(ans2);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'Very Satisfied',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans2 = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question3()),
                      );
                      print(ans2);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'I love my School',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans2 = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question3()),
                      );
                      print(ans2);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),));
  }
}

class Question3 extends StatefulWidget {
  @override
  _Question3State createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  static int ans3=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.pinkAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you enjoy the culture of your school?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Not a fan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ans3 = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question4()),
                      );
                      print(ans3);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'I don\'t hate it',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans3 = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question4()),
                      );
                      print(ans3);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'It\'s alright',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans3 = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question4()),
                      );
                      print(ans3);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'Good culture',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans3 = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question4()),
                      );
                      print(ans3);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'I love it here',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans3 = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question4()),
                      );
                      print(ans3);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question4 extends StatefulWidget {
  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  static int ans4=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.deepPurpleAccent.shade100
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "I love my parents and enjoy spending time with them",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Strongly disagree',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ans4 = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question5()),
                      );
                      print(ans4);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Disagree',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans4 = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question5()),
                      );
                      print(ans4);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Maybe',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans4 = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question5()),
                      );
                      print(ans4);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'Agree',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans4 = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question5()),
                      );
                      print(ans4);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'Strongly Agree',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans4 = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question5()),
                      );
                      print(ans4);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}

class Question5 extends StatefulWidget {
  @override
  _Question5State createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  static int ans5=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.greenAccent.shade400
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Most days I feel a sense of accomplishment from what I do",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Strongly disagree',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ans5 = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question6()),
                      );
                      print(ans5);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Disagree',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans5 = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question6()),
                      );
                      print(ans5);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Maybe',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans5 = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question6()),
                      );
                      print(ans5);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'Agree',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans5 = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question6()),
                      );
                      print(ans5);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'Strongly agree',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ans5 = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question6()),
                      );
                      print(ans5);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question6 extends StatefulWidget {
  @override
  _Question6State createState() => _Question6State();
}

class _Question6State extends State<Question6> {
  static int psw_pe_rewards=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.lightBlueAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you get rewards after successfully completing your task?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        psw_pe_rewards = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question7()),
                      );
                      print(psw_pe_rewards);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        psw_pe_rewards= 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question7()),
                      );
                      print(psw_pe_rewards);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'All the time',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        psw_pe_rewards = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question7()),
                      );
                      print(psw_pe_rewards);

                    },
                  ),
                ),
              ),
              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question7 extends StatefulWidget {
  @override
  _Question7State createState() => _Question7State();
}

class _Question7State extends State<Question7> {
  static int psw_pe_response=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.pinkAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you come up with a positive response for every situation you face?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        psw_pe_response = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question8()),
                      );
                      print(psw_pe_response);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        psw_pe_response = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question8()),
                      );
                      print(psw_pe_response);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'All the time',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        psw_pe_response = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question8()),
                      );
                      print(psw_pe_response);

                    },
                  ),
                ),
              ),
              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}

class Question8 extends StatefulWidget {
  @override
  _Question8State createState() => _Question8State();
}

class _Question8State extends State<Question8> {
  static int psw_ne=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.blueGrey.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      //TODO negatice emotion question
                      "Do you feel guilt when you score less marks?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        psw_ne = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question9()),
                      );
                      print(psw_ne);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        psw_ne = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question9()),
                      );
                      print(psw_ne);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        psw_ne = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question9()),
                      );
                      print(psw_ne);

                    },
                  ),
                ),
              ),
              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}

//psychological well-being end

//Health begin

class Question9 extends StatefulWidget {
  @override
  _Question9State createState() => _Question9State();
}

class _Question9State extends State<Question9> {
  static int he_srhs_1=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.limeAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you have enough energy for everyday life?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Very rarely',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        he_srhs_1 = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question10()),
                      );
                      print(he_srhs_1);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Rarely',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_srhs_1 = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question10()),
                      );
                      print(he_srhs_1);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_srhs_1 = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question10()),
                      );
                      print(he_srhs_1);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'Often',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_srhs_1 = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question10()),
                      );
                      print(he_srhs_1);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'Very Often',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_srhs_1 = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question10()),
                      );
                      print(he_srhs_1);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}

class Question10 extends StatefulWidget {
  @override
  _Question10State createState() => _Question10State();
}

class _Question10State extends State<Question10> {
  static int he_srhs_2=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.orange.shade300
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "How satisfied were you with your ability to perform your daily activities this week?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Very dissatisfied',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        he_srhs_2 = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question11()),
                      );
                      print(he_srhs_2);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Dissatisfied',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_srhs_2 = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question11()),
                      );
                      print(he_srhs_2);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Neither satisfied nor dissatisfied',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_srhs_2 = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question11()),
                      );
                      print(he_srhs_2);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'Satisfied',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_srhs_2 = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question11()),
                      );
                      print(he_srhs_2);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'Very Satisfied',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_srhs_2 = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question11()),
                      );
                      print(he_srhs_2);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}

class Question11 extends StatefulWidget {
  @override
  _Question11State createState() => _Question11State();
}

class _Question11State extends State<Question11> {
  static int he_disability=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.indigoAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you have any Disabilities?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'No, I don\'t',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        he_disability = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question12()),
                      );
                      print(he_disability);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Yes, I do',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_disability = 0;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question12()),
                      );
                      print(he_disability);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question12 extends StatefulWidget {
  @override
  _Question12State createState() => _Question12State();
}

//TODO on a scale of 1 to 10?
class _Question12State extends State<Question12> {
  static int he_mh=0;
  int _value=1;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.deepPurple.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "On a scale of 1 to 10, how much do you feel helpless/worthless?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ), Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.greenAccent,
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_mh = 10;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question13()),
                      );
                      print(he_mh);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.cyan,
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_mh = 9;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question13()),
                      );
                      print(he_mh);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.indigoAccent,
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_mh = 8;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question13()),
                      );
                      print(he_mh);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.pink,
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_mh = 7;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question13()),
                      );
                      print(he_mh);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.green,
                    child: Text(
                      '5',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_mh = 6;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question13()),
                      );
                      print(he_mh);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_mh = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question13()),
                      );
                      print(he_mh);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.purple,
                    child: Text(
                      '7',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_mh = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question13()),
                      );
                      print(he_mh);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.green,
                    child: Text(
                      '8',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_mh = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question13()),
                      );
                      print(he_mh);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      '9',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_mh = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question13()),
                      );
                      print(he_mh);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      '10',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        he_mh = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question13()),
                      );
                      print(he_mh);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}

//Health ends
//Governance begins

class Question13 extends StatefulWidget {
  @override
  _Question13State createState() => _Question13State();
}

class _Question13State extends State<Question13> {
  static int gov_par=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.teal.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "What is the magnitude of partiality in your class?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Very partial',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        gov_par = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question14()),
                      );
                      print(gov_par);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Partial',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        gov_par = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question14()),
                      );
                      print(gov_par);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Neither too partial, nor very equal',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        gov_par = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question14()),
                      );
                      print(gov_par);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'Not very partial',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        gov_par = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question14()),
                      );
                      print(gov_par);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'No partiality at all',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        gov_par = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question14()),
                      );
                      print(gov_par);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question14 extends StatefulWidget {
  @override
  _Question14State createState() => _Question14State();
}

class _Question14State extends State<Question14> {
  static int gov_trust=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.pinkAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "How much trust do you have in teaching/non-teaching staff?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Not at all',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        gov_trust = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question15()),
                      );
                      print(gov_trust);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Very little',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        gov_trust = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question15()),
                      );
                      print(gov_trust);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'fair amount',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        gov_trust = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question15()),
                      );
                      print(gov_trust);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'Satisfactory amount',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        gov_trust = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question15()),
                      );
                      print(gov_trust);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'A lot',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        gov_trust = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question15()),
                      );
                      print(gov_trust);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}

//governance ends
//living stander begins

class Question15 extends StatefulWidget {
  @override
  _Question15State createState() => _Question15State();
}

class _Question15State extends State<Question15> {
  static int ls_ds_workload=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.amber.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Does heavy workload keep your day enaging?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ls_ds_workload = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question16()),
                      );
                      print(ls_ds_workload);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ls_ds_workload = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question16()),
                      );
                      print(ls_ds_workload);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'All the time',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ls_ds_workload = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question16()),
                      );
                      print(ls_ds_workload);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question16 extends StatefulWidget {
  @override
  _Question16State createState() => _Question16State();
}

class _Question16State extends State<Question16> {
  static int ls_ds_exam=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.pinkAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you feel Joyful after giving examinations?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ls_ds_exam = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question17()),
                      );
                      print(ls_ds_exam);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ls_ds_exam = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question17()),
                      );
                      print(ls_ds_exam);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'All the time',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ls_ds_exam = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question17()),
                      );
                      print(ls_ds_exam);

                    },
                  ),
                ),
              ),


              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question17 extends StatefulWidget {
  @override
  _Question17State createState() => _Question17State();
}

class _Question17State extends State<Question17> {
  static int ls_ds_passing=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.lightGreen.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "How often do you struggle to get just passing marks?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ls_ds_passing = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question18()),
                      );
                      print(ls_ds_passing);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Rarely',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ls_ds_passing = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question18()),
                      );
                      print(ls_ds_passing);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ls_ds_passing = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question18()),
                      );
                      print(ls_ds_passing);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'Most of the time',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ls_ds_passing = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question18()),
                      );
                      print(ls_ds_passing);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'All the time',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ls_ds_passing = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question18()),
                      );
                      print(ls_ds_passing);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question18 extends StatefulWidget {
  @override
  _Question18State createState() => _Question18State();
}

class _Question18State extends State<Question18> {
  static int ls_enough=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.lightBlue.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "I score enough marks to get the percentage I want",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ls_enough = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question19()),
                      );
                      print(ls_enough);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ls_enough = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question19()),
                      );
                      print(ls_enough);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'All the time',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ls_enough = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question19()),
                      );
                      print(ls_enough);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}

//living standard ends
//social support

class Question19 extends StatefulWidget {
  @override
  _Question19State createState() => _Question19State();
}

class _Question19State extends State<Question19> {
  static int ss_rel_sec=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.deepPurple.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you keep your friends secrets?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ss_rel_sec = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question20()),
                      );
                      print(ss_rel_sec);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_rel_sec = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question20()),
                      );
                      print(ss_rel_sec);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_rel_sec = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question20()),
                      );
                      print(ss_rel_sec);

                    },
                  ),
                ),
              ),


              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question20 extends StatefulWidget {
  @override
  _Question20State createState() => _Question20State();
}

class _Question20State extends State<Question20> {
  static int ss_cp=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.pinkAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you have many friends and family to take care of you?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Not at all',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ss_cp = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question21()),
                      );
                      print(ss_cp);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Not many',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_cp = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question21()),
                      );
                      print(ss_cp);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Neither too many, nor too little',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_cp = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question21()),
                      );
                      print(ss_cp);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'a few people',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_cp = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question21()),
                      );
                      print(ss_cp);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'A lot',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_cp = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question21()),
                      );
                      print(ss_cp);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question21 extends StatefulWidget {
  @override
  _Question21State createState() => _Question21State();
}

class _Question21State extends State<Question21> {
  static int ss_fl=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.amber.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you feel loved by your parents?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ss_fl = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question22()),
                      );
                      print(ss_fl);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_fl = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question22()),
                      );
                      print(ss_fl);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'All othe time',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_fl = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question22()),
                      );
                      print(ss_fl);

                    },
                  ),
                ),
              ),
              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
//todo feeling loved

class Question22 extends StatefulWidget {
  @override
  _Question22State createState() => _Question22State();
}

class _Question22State extends State<Question22> {
  static int ss_lo_notime=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.lightGreen.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Does your family give you sufficient amount of time?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ss_lo_notime = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question23()),
                      );
                      print(ss_lo_notime);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Somtimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_lo_notime = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question23()),
                      );
                      print(ss_lo_notime);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_lo_notime = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question23()),
                      );
                      print(ss_lo_notime);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question23 extends StatefulWidget {
  @override
  _Question23State createState() => _Question23State();
}

class _Question23State extends State<Question23> {
  static int ss_lo_untrust=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.lightBlueAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "How much trust do you have on your friends?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Not at all',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ss_lo_untrust = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question24()),
                      );
                      print(ss_lo_untrust);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Not much',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_lo_untrust = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question24()),
                      );
                      print(ss_lo_untrust);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Neither too much, nor too little',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_lo_untrust = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question24()),
                      );
                      print(ss_lo_untrust);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'I trust them',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_lo_untrust = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question24()),
                      );
                      print(ss_lo_untrust);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'I can trust them blindly',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ss_lo_untrust = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question24()),
                      );
                      print(ss_lo_untrust);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}

//social ends
//community begins

class Question24 extends StatefulWidget {
  @override
  _Question24State createState() => _Question24State();
}

class _Question24State extends State<Question24> {
  static int cv_belong=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.teal.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "When you make a mistake, do your Parents tell you to accept it and move on?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        cv_belong = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question25()),
                      );
                      print(cv_belong);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        cv_belong = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question25()),
                      );
                      print(cv_belong);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        cv_belong = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question25()),
                      );
                      print(cv_belong);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question25 extends StatefulWidget {
  @override
  _Question25State createState() => _Question25State();
}

class _Question25State extends State<Question25> {
  static int cv_neb=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.orange.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do your parents approve of the people in your neighbourhood?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        cv_neb = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question26()),
                      );
                      print(cv_neb);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        cv_neb = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question26()),
                      );
                      print(cv_neb);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        cv_neb = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question26()),
                      );
                      print(cv_neb);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question26 extends StatefulWidget {
  @override
  _Question26State createState() => _Question26State();
}

class _Question26State extends State<Question26> {
  static int cv_safe=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.redAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you feel safe in your school environment?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        cv_safe = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question27()),
                      );
                      print(cv_safe);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        cv_safe = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question27()),
                      );
                      print(cv_safe);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        cv_safe = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question27()),
                      );
                      print(cv_safe);

                    },
                  ),
                ),
              ),
              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question27 extends StatefulWidget {
  @override
  _Question27State createState() => _Question27State();
}

class _Question27State extends State<Question27> {
  static int cv_vol=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.yellow.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you help people in their time of need?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        cv_vol = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question28()),
                      );
                      print(cv_vol);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        cv_vol = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question28()),
                      );
                      print(cv_vol);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        cv_vol = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question28()),
                      );
                      print(cv_vol);

                    },
                  ),
                ),
              ),
              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
//community ends
//time use begins

class Question28 extends StatefulWidget {
  @override
  _Question28State createState() => _Question28State();
}

class _Question28State extends State<Question28> {
  static int tu_enjoy=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.pinkAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you enjoy your time in school?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        tu_enjoy = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question29()),
                      );
                      print(tu_enjoy);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        tu_enjoy = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question29()),
                      );
                      print(tu_enjoy);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'ALways',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        tu_enjoy = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question29()),
                      );
                      print(tu_enjoy);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question29 extends StatefulWidget {
  @override
  _Question29State createState() => _Question29State();
}

class _Question29State extends State<Question29> {
  static int tu_rush=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.lightBlueAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you feel rushed between classes?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        tu_rush = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question30()),
                      );
                      print(tu_rush);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        tu_rush = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question30()),
                      );
                      print(tu_rush);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        tu_rush = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question30()),
                      );
                      print(tu_rush);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question30 extends StatefulWidget {
  @override
  _Question30State createState() => _Question30State();
}

class _Question30State extends State<Question30> {
  static int tu_sol_work=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.lightGreenAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you get enough time to work on yourself or do what you love?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        tu_sol_work = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question31()),
                      );
                      print(tu_sol_work);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        tu_sol_work = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question31()),
                      );
                      print(tu_sol_work);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        tu_sol_work = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question31()),
                      );
                      print(tu_sol_work);

                    },
                  ),
                ),
              ),


              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question31 extends StatefulWidget {
  @override
  _Question31State createState() => _Question31State();
}

class _Question31State extends State<Question31> {
  static int tu_sol_act=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.blueGrey.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you get enough time to complete necessary activities?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        tu_sol_act = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question32()),
                      );
                      print(tu_sol_act);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        tu_sol_act = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question32()),
                      );
                      print(tu_sol_act);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        tu_sol_act = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question32()),
                      );
                      print(tu_sol_act);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}

//time use ends
//education begins

class Question32 extends StatefulWidget {
  @override
  _Question32State createState() => _Question32State();
}

class _Question32State extends State<Question32> {
  static int ed_div=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.purple.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "What is the condition of Classrooms and toilets in your school?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'The worst',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ed_div = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question33()),
                      );
                      print(ed_div);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Not very good',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ed_div = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question33()),
                      );
                      print(ed_div);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Neither too good, nor too bad',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ed_div = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question33()),
                      );
                      print(ed_div);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text(
                      'Good condition',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ed_div = 4;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question33()),
                      );
                      print(ed_div);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text(
                      'The best',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ed_div = 5;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question33()),
                      );
                      print(ed_div);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question33 extends StatefulWidget {
  @override
  _Question33State createState() => _Question33State();
}

class _Question33State extends State<Question33> {
  static int ed_hl_ab=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.orange.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do you get Activity Based Learning in school?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ed_hl_ab = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question34()),
                      );
                      print(ed_hl_ab);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ed_hl_ab = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question34()),
                      );
                      print(ed_hl_ab);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'All the time',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ed_hl_ab = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question34()),
                      );
                      print(ed_hl_ab);

                    },
                  ),
                ),
              ),


              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question34 extends StatefulWidget {
  @override
  _Question34State createState() => _Question34State();
}

class _Question34State extends State<Question34> {
  static int ed_hl_ds=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.green.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Do your doubts get solved by your teacher in class?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ed_hl_ds = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question35()),
                      );
                      print(ed_hl_ds);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Somtimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ed_hl_ds = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question35()),
                      );
                      print(ed_hl_ds);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ed_hl_ds = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Question35()),
                      );
                      print(ed_hl_ds);

                    },
                  ),
                ),
              ),

              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Question35 extends StatefulWidget {
  @override
  _Question35State createState() => _Question35State();
}

class _Question35State extends State<Question35> {
  static int ed_hl_ex=0;
  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.white,
                    Colors.pinkAccent.shade200
                  ]
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Other than your school activities, Do you participate in any extracurricular activities?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'Never',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      setState(() {
                        ed_hl_ex = 1;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Score()),
                      );
                      print(ed_hl_ex);


                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Sometimes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ed_hl_ex = 2;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Score()),
                      );
                      print(ed_hl_ex);

                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Always',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ed_hl_ex = 3;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Score()),
                      );
                      print(ed_hl_ex);

                    },
                  ),
                ),
              ),


              //TODO: Add a Row here as your score keeper
            ],
          ),
        )
    );
  }
}
class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  double _happy=0;
  String _status='';
  void _calculate(){
    int psychological_wellbeing =0;
    int life_satisfaction=0;
    int positive_emo=0;
    int negative_emo=0;
    int health=0;
    int good_governance=0;
    int living_standard=0;
    int daily_stress=0;
    int social_support=0;
    int community_vitality=0;
    int time_use=0;
    int education=0;
    int hi=0;
    life_satisfaction = _Question1State.ans1+_Question2State.ans2+_Question3State.ans3+_Question4State.ans4+_Question5State.ans5;
    if(life_satisfaction>=20 && life_satisfaction<=25){
      int pe = _Question6State.psw_pe_rewards+_Question7State.psw_pe_response;
      if(pe>=6 && pe<=9){
        if(_Question8State.psw_ne>=2){
          psychological_wellbeing = 1;
        }

      }
    }
    int srhs = _Question9State.he_srhs_1 + _Question10State.he_srhs_2;
    if(srhs>=8){
      if(_Question11State.he_disability==1){
        if(_Question12State.he_mh>=6){
          health = 1;
        }
      }
    }
    if(_Question13State.gov_par>=3){
      if(_Question14State.gov_trust>=3){
        good_governance = 1;
      }
    }
    daily_stress = _Question15State.ls_ds_workload+_Question16State.ls_ds_exam;
    if(daily_stress>=4){
      if(_Question17State.ls_ds_passing>=3){
        if(_Question18State.ls_enough>=2){
          living_standard=1;
        }
      }
    }
    int lonely = _Question22State.ss_lo_notime+_Question23State.ss_lo_untrust;
    if(_Question19State.ss_rel_sec>=2){
      if(_Question20State.ss_cp>=3){
        if(_Question21State.ss_fl>=2){
          if(lonely>=5){
            social_support = 1;
          }
        }
      }
    }
    if(_Question24State.cv_belong>=2){
      if(_Question25State.cv_neb>=2){
        if(_Question26State.cv_safe>=2){
          if(_Question27State.cv_vol>=2){
            community_vitality=1;
          }
        }
      }
    }
    int sol = _Question30State.tu_sol_work+ _Question31State.tu_sol_act;
    if(_Question28State.tu_enjoy>=2){
      if(_Question29State.tu_rush>=2){
        if(sol>=4){
          time_use = 1;

        }
      }
    }
    int hl = _Question33State.ed_hl_ab+_Question34State.ed_hl_ds+_Question35State.ed_hl_ex;
    if(_Question32State.ed_div>=3){
      if(hl>=6){
        education = 1;
      }
    }
    hi = psychological_wellbeing+health+good_governance+living_standard+social_support+community_vitality+time_use+education;
    // double _happy = hi/8;
    _happy = hi/8;
    // String status;
    if(_happy>0.6){
      _status = 'Happy';
    }
    else{
      _status = 'Not Happy';
    }
    print('your score');
    print(hi);
    print(_happy);
    print(_status);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Happiness Index app'),
        ),
        body: Center(
          child: Container(

            // decoration: BoxDecoration(
            //     gradient: RadialGradient(
            //         radius: 1,
            //         colors: [
            //           Colors.white,
            //           Colors.greenAccent.shade200
            //         ]
            //     )
            // ),
            child: Column(


                mainAxisAlignment:MainAxisAlignment.center,
                children: <Widget>[
            Image(
          image: AssetImage("images/quizResultBadge.png"),
        ),
                  Text('Your score is:'),
                  Text('$_happy'),
                  Text('$_status'),
                  TextButton(
                    onPressed:(){ _calculate();setState(() {
                      Text('$_happy',style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),);
                      Text('$_status');
                    });
                    },
                    child: const Text('See Score'),

                  ),


                  //),
                  //),

                ]



            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HomeScreen()),
            );
          },
          child: const Icon(Icons.navigation),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
//education ends