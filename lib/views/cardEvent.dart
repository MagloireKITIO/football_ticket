import 'package:flutter/material.dart';
import 'package:football_ticket/models/evenement.dart';
import 'package:toast/toast.dart';
import 'package:football_ticket/data/dummy.dart';
import 'package:football_ticket/adapter/list_evenement_card_adapter.dart';




class cardEvent extends StatefulWidget {

  cardEvent();


  @override
  _cardEventState createState() =>  _cardEventState();
}

class _cardEventState extends State<cardEvent> {

  BuildContext context;
  void onItemClick(int index, evenement obj) {
    Toast.show("evenement " + index.toString() + "clicked", context, duration: Toast.LENGTH_SHORT);
  }





  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<evenement> items = Dummy.getevenementData(3);
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              brightness: Brightness.light,
              backgroundColor: Colors.white,
              title: Text("EVENEMENT", style: TextStyle(color: Colors.black)),
              // leading: IconButton(
              //   icon: Icon(Icons.menu, color: Colors.black),
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              // ),
              // actions: <Widget>[
              //   IconButton(
              //     icon: Icon(Icons.search, color: MyColors.grey_60),
              //     onPressed: () {},
              //   ),
              //   IconButton(
              //     icon: Icon(Icons.more_vert, color: MyColors.grey_60),
              //     onPressed: () {},
              //   ),// overflow menu
              // ]
          ),
          ListevenementCardAdapter(items, onItemClick).getView()
        ],
      ),
    );
  }
}


