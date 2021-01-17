import 'package:flutter/material.dart';
import 'package:hackthenorthapp/calendarPage.dart';
import 'dart:async';
import 'AppColors.dart';
import 'landingPage.dart';
import 'main.dart';
import 'Cards.dart';

AnimationController _animationController;

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute>
    with SingleTickerProviderStateMixin {
  static bool valuefirst = false;
  static bool valuesecond = false;
  static bool valuethird = false;
  static bool valuefourth = false;
  static bool valuefifth = false;
  static bool valuesixth = false;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    Timer(Duration(milliseconds: 200), () => _animationController.forward());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.amber,
      appBar: AppBar(
        title: Text("Choose Your Preferences"),
        backgroundColor: AppColors.darkBlue,

      ),
      body: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, 0.25),
          end: Offset.zero,
        ).animate(_animationController),
        child: FadeTransition(
          opacity: _animationController,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 20, 16.0, 16.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Getting to know you",
                      style: TextStyle(
                        fontSize: 24,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          child: CheckboxListTile(
                            //secondary: const Icons(Icons.alarm),
                            title: const Text('Biking'),
                            subtitle: Text('Active'),
                            value: valuefirst,
                            onChanged: (bool value) {
                              setState(() {
                                valuefirst = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: CheckboxListTile(
                            //secondary: const Icons(Icons.alarm),
                            title: const Text('Kayaking'),
                            subtitle: Text('Active'),
                            value: valuesecond,
                            onChanged: (bool value) {
                              setState(() {
                                valuesecond = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: CheckboxListTile(
                            //secondary: const Icons(Icons.alarm),
                            title: const Text('Painting'),
                            subtitle: Text('Artistic'),
                            value: valuethird,
                            onChanged: (bool value) {
                              setState(() {
                                valuethird = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: CheckboxListTile(
                            //secondary: const Icons(Icons.alarm),
                            title: const Text('Karaoke'),
                            subtitle: Text('Artistic'),
                            value: valuefourth,
                            onChanged: (bool value) {
                              setState(() {
                                valuefourth = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: CheckboxListTile(
                            //secondary: const Icons(Icons.alarm),
                            title: const Text('Completing a Puzzle'),
                            subtitle: Text('Thought-Provocking'),
                            value: valuefifth,
                            onChanged: (bool value) {
                              setState(() {
                                valuefifth = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: CheckboxListTile(
                            title: const Text('Writing a Short Story'),
                            subtitle: Text('Thought-provocking'),
                            value: valuesixth,
                            onChanged: (bool value) {
                              setState(() {
                                valuesixth = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Center(
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cards()),
                          );
                        },
                        label: Text('Go to Calendar!'),
                        backgroundColor: AppColors.darkBlue,
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

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
