import 'package:flutter/material.dart';
import 'package:hackthenorthapp/calendar.dart';
import 'dart:async';
import 'AppColors.dart';
import 'namepage.dart';
import 'main.dart';

AnimationController _animationController;

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute>
    with SingleTickerProviderStateMixin {
  static bool valuefirst = false;
  static bool valuesecond = false;
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
      backgroundColor: AppColors.red,
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: AppColors.blue,
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
                      "Get to know you",
                      style: TextStyle(
                        fontSize: 24,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  Container(
                      child: Column(
                    children: <Widget>[
                      CheckboxListTile(
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
                      Checkbox(
                        checkColor: AppColors.blue,
                        activeColor: AppColors.red,
                        value: valuesecond,
                        onChanged: (bool value) {
                          setState(() {
                            valuesecond = value;
                          });
                        },
                      ),
                    ],
                  )),
                  Container(
                    child: Center(
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Calendar()),
                          );
                        },
                        label: Text('Go to Calendar!'),
                        backgroundColor: AppColors.blue,
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
