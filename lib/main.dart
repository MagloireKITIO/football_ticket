import 'package:flutter/material.dart';
import 'package:football_ticket/views/signIn.dart';
import 'package:football_ticket/views/cardEvent.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _indexSelectionne = 0;

  List<Widget> _widgetOptions = <Widget>[

    cardEvent(),

  ];
  void _itemClique(int index) {
    setState(() {
      _indexSelectionne = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FootBallTC',
        theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      body: _widgetOptions.elementAt(_indexSelectionne),

        bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Accueil',
              style: TextStyle(color: Colors.black),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.tag,
              color: Colors.black,
            ),
            title: Text(
              'Ticket',
              style: TextStyle(color: Colors.black),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text(
              'parametre',
              style: TextStyle(color: Colors.black),
            )),
      ],
      onTap: _itemClique,
      currentIndex: _indexSelectionne,
    ),
    ),
    );

  }
}
