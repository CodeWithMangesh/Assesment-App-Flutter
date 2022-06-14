import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy/login.dart';
// import 'package:flutter_quiz_app/common/alert_util.dart';
import 'package:happy/theme_helper.dart';
// import 'package:flutter_quiz_app/stores/quiz_store.dart';
import 'package:happy/disco_button.dart';
import 'package:happy/main.dart';

// import 'quiz_category.dart';
// import 'quiz_history_screen.dart';
// import 'quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  // final QuizStore _quizStore = QuizStore();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: navigationDrawer(),
        body: Container(
          alignment: Alignment.center,
          decoration: ThemeHelper.fullScreenBgBoxDecoration(),
          child: Column(
            children: [
              drawerToggleButton(),
              Column(
                children: [
                  headerText("Test App"),
                  SizedBox(height: 30),
                  ...homeScreenButtons(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Drawer navigationDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Happiness Index App",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                Text(
                  "Version: 1.00",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            title: const Text('Start Quiz'),
            onTap: () async {
              // var quiz = await _quizStore.getRandomQuizAsync();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Question1()),
              );
            },
          ),
          ListTile(
            title: const Text('Quiz Category'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Question1()),
              );
            },
          ),
          ListTile(
            title: const Text('Quiz History'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Question1()),
              );
            },
          ),
          Divider(
            thickness: 2,
          ),
          // ListTile(
          //   title: const Text('About'),
          //   onTap: () {
          //     AlertUtil.showAlert(context, "About us", "More at https://fluttertutorial.net");
          //   },
          // ),
          ListTile(
            title: const Text('Exit'),
            onTap: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget drawerToggleButton() {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20),
      alignment: Alignment.topLeft,
      child: GestureDetector(
        child: const Image(
          image: AssetImage("images/menu.png"),
          width: 36,
        ),
        onTap: () {
          _key.currentState!.openDrawer();
        },
      ),
    );
  }

  Text headerText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 72,
          color: ThemeHelper.accentColor,
          fontWeight: FontWeight.bold,
          shadows: [Shadow(color: ThemeHelper.shadowColor, offset: Offset(-5, 5), blurRadius: 30)]),
    );
  }

  List<Widget> homeScreenButtons(BuildContext context) {
    return [
      DiscoButton(
        onPressed: () async {
          // var quiz = await _quizStore.getRandomQuizAsync();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  Question1()),
          );
        },
        child: Text(
          "Start Quiz",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        isActive: true,
      ),
      DiscoButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  Question1()),
          );
        },
        child: Text(
          "Quiz Category",
          style: TextStyle(fontSize: 30, color: ThemeHelper.primaryColor),
        ),
      ),
      DiscoButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  Login()),
          );
        },
        child: Text(
          "LogOut",
          style: TextStyle(fontSize: 30, color: ThemeHelper.primaryColor),
        ),
      ),
    ];
  }
}