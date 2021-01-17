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
  static bool valuethird = false;
  static bool valuefourth = false;
  static bool valuefifth = false;
  static bool valuesixth = false;
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
        ).animate(_animationController),
      ),
    );
        children: <Widget> [ Container (
              alignment: Alignment.topLeft,
              child: Text ("Get to know you",
                  style: TextStyle(
                  fontSize: 24,
                  color: AppColors.white, )
                ),
        ),
        ];
        child: FadeTransition(
          opacity: _animationController,
        );
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
<<<<<<< Updated upstream
              ), */
=======
                    ),
                  ),
                  //ListView (
                    Container(
                      child: Column(
                    children: <Widget>[
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
<<<<<<< Updated upstream
                      Checkbox(
                        checkColor: AppColors.blue,
                        activeColor: AppColors.red,
=======
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
                        title: const Text('Kayaking'),
                        subtitle: Text('Active'),
>>>>>>> Stashed changes
                        value: valuesecond,
                        onChanged: (bool value){
                          setState((){
                            valuesecond = value;
=======
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
                        title: const Text('Hiking'),
                        subtitle: Text('Active'),
                        value: valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            valuefirst = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
<<<<<<< Updated upstream
                        title: const Text('Kayaking'),
                        subtitle: Text('Active'),
                        value: valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            valuefirst = value;
                          });
=======
                        title: const Text('Painting'),
                        subtitle: Text('Artistic'),
                        value: valuethird,
                        onChanged: (bool value) {
                          setState(() {
                            valuethird = value;
                          });
                        },
                      ),
                      CheckboxListTile(
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
                      CheckboxListTile(
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
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
                        title: const Text('Writing a Short Story'),
                        subtitle: Text('Thought-provocking'),
                        value: valuesixth,
                        onChanged: (bool value) {
                          setState(() {
                            valuesixth = value;
                          });
                        },
                      ),
                    ],
                      ),  
                  ),
                  //),
                  Container(
                    child: Center(
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Calendar()),
                          );
>>>>>>> Stashed changes
                        },
                      ),
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
                        title: const Text('Sculpting'),
                        subtitle: Text('Artistic'),
                        value: valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            valuefirst = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
                        title: const Text('Painting'),
                        subtitle: Text('Artistic'),
                        value: valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            valuefirst = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
                        title: const Text('Bake and Decorate a Cake'),
                        subtitle: Text('Artistic'),
                        value: valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            valuefirst = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
                        title: const Text('Puzzle'),
                        subtitle: Text('Thought-provoking'),
                        value: valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            valuefirst = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
                        title: const Text('Write a Short Story'),
                        subtitle: Text('Thought-provoking'),
                        value: valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            valuefirst = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                        //secondary: const Icons(Icons.alarm),
                        title: const Text('Watch a Movie'),
                        subtitle: Text('Thought-provoking'),
                        value: valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            valuefirst = value;
>>>>>>> Stashed changes
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
          );
        
      }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}