import 'package:flutter/material.dart';
import 'package:football_ticket/views/signIn.dart';
import 'package:football_ticket/views/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexSelectionne = 0;

  void _itemClique(int index) {
    setState(() {
      _indexSelectionne = index;
    });
  }

  
  // List<Widget> _widgetOptions = <Widget>[

  //   // les activitées
   
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // body: _widgetOptions.elementAt(_indexSelectionne),

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
    ));
  }
}
