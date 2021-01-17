import 'package:flutter/material.dart';
import 'package:hackthenorthapp/calendarPage.dart';
import 'dart:async';
import 'AppColors.dart';
import 'namePage.dart';
import 'main.dart';
<<<<<<< HEAD
import 'suggestionPart.dart';
=======
>>>>>>> db2bddf4661cbdbf2712c1396177076df485e2cf

AnimationController _animationController;

class SecondRoute extends StatefulWidget {
<<<<<<< HEAD
  SecondRoute({Key key}) : super(key:key);

=======
>>>>>>> db2bddf4661cbdbf2712c1396177076df485e2cf
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute>
<<<<<<< HEAD
  with SingleTickerProviderStateMixin {
=======
    with SingleTickerProviderStateMixin {
>>>>>>> db2bddf4661cbdbf2712c1396177076df485e2cf
  static bool valuefirst = false;
  static bool valuesecond = false;
  static bool valuethird = false;
  static bool valuefourth = false;
  static bool valuefifth = false;
  static bool valuesixth = false;
<<<<<<< HEAD
  
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  
=======

>>>>>>> db2bddf4661cbdbf2712c1396177076df485e2cf
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
<<<<<<< HEAD
        title: Text("Your Preferences"),
        backgroundColor: AppColors.blue,
      ),
      body:
      SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, 0.25),
          end: Offset.zero,
        )
        .animate(_animationController), 
=======
        title: Text("Second Page"),
        backgroundColor: AppColors.blue,
      ),
      body: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, 0.25),
          end: Offset.zero,
        ).animate(_animationController),
>>>>>>> db2bddf4661cbdbf2712c1396177076df485e2cf
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
<<<<<<< HEAD
                      "Geting to know you",
=======
                      "Get to know you",
>>>>>>> db2bddf4661cbdbf2712c1396177076df485e2cf
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
                        CheckboxListTile(
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
                        CheckboxListTile(
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
                  Container(
                    child: Center(
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.push(
                            context,
<<<<<<< HEAD
                            MaterialPageRoute(builder: (context) => ThirdRoute()),
=======
                            MaterialPageRoute(builder: (context) => Calendar()),
>>>>>>> db2bddf4661cbdbf2712c1396177076df485e2cf
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
<<<<<<< HEAD
}
=======
}

// START OF BOTTOM NAV BAR CODE
class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<BottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
>>>>>>> db2bddf4661cbdbf2712c1396177076df485e2cf
