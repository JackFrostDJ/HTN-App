import 'package:flutter/material.dart';
import 'dart:async';
import 'AppColors.dart';
import 'namepage.dart';
import 'main.dart';

AnimationController _animationController;

class SecondRoute extends StatefulWidget{
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> with SingleTickerProviderStateMixin {
  static bool valuefirst = false;
  static bool valuesecond = false;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 400)
    );
    Timer(Duration(milliseconds: 200), () => _animationController.forward());
    super.initState(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      appBar: AppBar(
        title: Text("Second Route"),
        backgroundColor: AppColors.blue,
      ),
      body: SlideTransition (
        position: Tween<Offset>(
          begin: Offset(0, 0.25),
          end: Offset.zero,
        ).animate(_animationController)),
        children: <Widget> [ Container (
              alignment: Alignment.topLeft,
              child: Container (
                Text ("Get to know you",
                  style: TextStyle(
                  fontSize: 24,
                  color: AppColors.white, )
                        ),
                      ),
              )],
        child: FadeTransition(
          opacity: _animationController,
          child: Stack( 
            children: <Widget>[
              Container (
              padding: EdgeInsets.fromLTRB(16.0, 270.0, 16.0, 16.0),
              child: Column (
              children: <Widget> [
             /*  Container(
                alignment: Alignment.topLeft,
                child: Text("Get to know you",
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.white,
                        ),
                      ),
              ), */
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
                        title: const Text('Biking'),
                          subtitle: Text('Active'),
                        value: valuefirst,
                        onChanged: (bool value){
                          setState(() {
                            valuefirst = value;
                          });
                        },
                      ),
                      Checkbox(
                        checkColor: AppColors.blue,
                        activeColor: AppColors.red,
                        value: valuesecond,
                        onChanged: (bool value){
                          setState((){
                            valuesecond = value;
                          });
                        },
                      ),
              ],
              ),
              ),
                    Container (
                      padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 24.0),
                      child: Center (
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FirstRoute()),
                            );
                          },
                          label: Text('Next!'),
                          backgroundColor: AppColors.blue,
                        ),
                      ),
                    ),
            ],
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