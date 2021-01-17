import 'package:flutter/material.dart';
import 'AppColors.dart';
import 'calendarPage.dart';

class Cards extends StatelessWidget {
  static const String _title = 'Suggested Activities';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
            title: const Text(_title), backgroundColor: Colors.blue[900]),
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.book_outlined),
                  title: Text(
                      'Create a Journal about the craziest dream you remember'),
                  subtitle: Text(
                      'Enter the "Thought-Provocking" channel in Community to share and dsicuss with others!'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('ADD EVENT'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('SEE MORE DETAILS'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.park),
                  title: Text(
                      'Go To Your Nearest Park and 30 Minutes of Outdoor Yoga with your dog, Jerry!'),
                  subtitle: Text(
                      'Join the "Active" channel in Commmunity to reveal your after-thoughts!'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('ADD EVENT'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('SEE MORE DETAILS'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.landscape_outlined),
                  title: Text('Complete a 500-Piece Puzzle Of A Landscape'),
                  subtitle: Text(
                      'Discuss with similar minded poeple in the "Thought-Provocking" channel in Community under "Artistic"!'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('ADD EVENT'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('SEE MORE DETAILS'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.brush_outlined),
                  title: Text('Follow a Bob Ross Tutorial'),
                  subtitle: Text(
                      'Paint Enthusists Are Waiting to See Your Masterpiece in Community!'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('ADD EVENT'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('SEE MORE DETAILS'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          FloatingActionButton.extended(
            backgroundColor: const Color(0xff03dac6),
            foregroundColor: Colors.black,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Calendar()));
            },
            icon: Icon(Icons.add),
            label: Text('Show Me My Calendar'),
          )
        ],
      ),
    );
  }
}
