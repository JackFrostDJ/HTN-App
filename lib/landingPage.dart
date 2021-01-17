import 'package:flutter/material.dart';
import 'dart:async';
import 'AppColors.dart';
import 'main.dart';
import 'model.dart';
import 'getUserPrefPage.dart';
import 'result.dart';

AnimationController _animationController;

class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute>
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
      // appBar: AppBar(
      //  title: Text("Testing Testing"),
      //   backgroundColor: AppColors.blue,
      // ),
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
                      margin: EdgeInsets.fromLTRB(30.0, 210.0, 30.0, 0.0),
                      alignment: Alignment.center,
                      child: NameForm(), //Text("1 QUESTION",
                      //   style: TextStyle(
                      //     fontSize: 24,
                      //     color: AppColors.white,
                      //   ),
                      // ),
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

class NameForm extends StatefulWidget {
  @override
  _NameForm createState() => _NameForm();
}

class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}

class _NameForm extends State<NameForm> {
  final _formKey = GlobalKey<FormState>();
  Model model = Model();
  String _category;
  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 1.5;
    var list = ["Male", "Female", "Other"];

    List<Map> _myJson = [
      {
        "id" : "1",
        "image" : "custom/male_gender.png",
        "name" : "Male"
      },
      {
        "id" : "2",
        "image" : "custom/female_gender.png",
        "name" : "Female"
      },
      {
        "id" : "3",
        "image" : "custom/other_gender.png",
        "name" : "Other"
      },
    ];
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            width: halfMediaWidth,
            decoration: new BoxDecoration(
              color: AppColors.white,
              borderRadius: new BorderRadius.all(new Radius.circular(25.7)),
            ),
            child: MyFormField(
              hintText: "First Name",
              validator: (String value) {
                if (value.isEmpty) {
                  return "Enter your first name";
                }
                return null;
              },
              onSaved: (String value) {
                model.firstName = value;
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
            width: halfMediaWidth,
            decoration: new BoxDecoration(
              color: AppColors.white,
              borderRadius: new BorderRadius.all(new Radius.circular(25.7)),
            ),
            child: MyFormField(
              hintText: "Last Name",
              validator: (String value) {
                if (value.isEmpty) {
                  return "Enter your last name";
                }
                return null;
              },
              onSaved: (String value) {
                model.lastName = value;
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
            width: halfMediaWidth,
            decoration: new BoxDecoration(
              color: AppColors.white,
              borderRadius: new BorderRadius.all(new Radius.circular(25.7)),
            ),
            child: MyFormField(
              hintText: "Age",
              validator: (String value) {
                if (value.isEmpty) {
                  return "Enter your age";
                }
                return null;
              },
              onSaved: (String value) {
                model.age = value;
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
            width: halfMediaWidth,
            decoration: new BoxDecoration(
              color: AppColors.white,
              borderRadius: new BorderRadius.all(new Radius.circular(25.7)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String> (
                          isDense: true,
                          hint: new Text("Gender"),
                          value: _category,
                          onChanged: (String newValue) {
                            setState(() {
                              _category = newValue;
                              model.gender = newValue;
                            });
                          },
                          items: _myJson.map((Map map) {
                            return new DropdownMenuItem<String>(
                              value: map["name"].toString(),
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    map["image"],
                                    width: 25,
                                  ),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(map["name"])
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 24.0),
            child: Center(
              child: FloatingActionButton.extended(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  }
                },
                label: Text('Next'),
                icon: Icon(Icons.arrow_forward_rounded),
                backgroundColor: AppColors.darkBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
