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
    const IconData jigsaw = IconData(0xe900, fontFamily: "Puzzle");
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
                      "Tell Us About Yourself...",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
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
                            secondary: const Icon(Icons.pedal_bike),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: CheckboxListTile(
                            secondary: const Icon(Icons.waves_rounded),
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
                            secondary: const Icon(Icons.brush),
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
                            secondary: const Icon(Icons.mic_external_on),
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
                            secondary: const Icon(jigsaw),
                            title: const Text('Completing a Puzzle'),
                            subtitle: Text('Thought-Provoking'),
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
                            secondary: const Icon(Icons.book_outlined),
                            title: const Text('Writing a Short Story'),
                            subtitle: Text('Thought-Provoking'),
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
                    margin: const EdgeInsets.only(top: 20.0),
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
