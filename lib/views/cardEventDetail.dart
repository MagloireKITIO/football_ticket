import 'package:flutter/material.dart';
import 'package:football_ticket/adapter/list_evenementDetail_card_adapter.dart';
import 'package:football_ticket/models/evenement.dart';
import 'package:toast/toast.dart';
import 'package:football_ticket/data/dummy.dart';
import 'package:football_ticket/adapter/list_evenement_card_adapter.dart';




class cardEventDetail extends StatefulWidget {

  cardEventDetail();


  @override
  _cardEventDetailState createState() =>  _cardEventDetailState();
}

class _cardEventDetailState extends State<cardEventDetail> {

  BuildContext context;
  void onItemClick(int index, evenement obj) {
  }





  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<evenement> items = Dummy.getevenementData(1);
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text("DETAILS DE L'EVENEMENT", style: TextStyle(color: Colors.black)),
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
          ListevenementDetailCardAdapter(items).getView()
        ],
      ),
    );
  }
}


