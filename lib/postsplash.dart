import 'package:flutter/material.dart';
import 'dart:async';
import 'AppColors.dart';
import 'landingPage.dart';

AnimationController _animationController;

class StarterPage extends StatefulWidget {
  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage>
    with SingleTickerProviderStateMixin {
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
      body: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, 0.25),
          end: Offset.zero,
        ).animate(_animationController),
        child: FadeTransition(
          opacity: _animationController,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0.0),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("custom/QuaranTimeLogo.gif", scale: 3,),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                              child: Text(" Welcome to QuaranTime!\n\n\n\n\nLet's get to know you better....",
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
                              child: Center(
                                child: FloatingActionButton.extended(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => FirstRoute()),
                                    );
                                  },
                                  label: Text('Get Started!'),
                                  backgroundColor: AppColors.darkBlue,
                                ),
                              ),
                            )
                          ]
                      ),
                    ),
                  ],
                ),
              )
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
