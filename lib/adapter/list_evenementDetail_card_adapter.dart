import 'package:flutter/material.dart';
import 'package:football_ticket/models/evenement.dart';
import 'package:football_ticket/data/img.dart';
import 'package:football_ticket/data/my_colors.dart';

import 'package:toast/toast.dart';




class ListevenementDetailCardAdapter {
  List items = <evenement>[];
  List itemsTile = <ItemTile>[];

  ListevenementDetailCardAdapter(this.items) {
    for (var i = 0; i < items.length; i++) {
      itemsTile.add(ItemTile(index: i, object: items[i]));
    }
  }
  SliverList getView() {
    return SliverList(delegate: SliverChildListDelegate(itemsTile));
  }

}

// ignore: must_be_immutable
class ItemTile extends StatelessWidget {

  final evenement object;
  final int index;
  final Function onClick;

  const ItemTile({
    Key key,
    @required this.index,
    @required this.object,
    @required this.onClick,
  })  : assert(index != null),
        assert(object != null),
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(

      child: Container(
        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
        child: Card(
            margin: EdgeInsets.all(0), elevation: 2,
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: <Widget>[
                Image.asset(Img.get(object.image), height: 150, width: double.infinity, fit: BoxFit.cover),
                Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(object.subtitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize:25 )),
                            Spacer(),
                            Text(object.date ),
                          ],
                        ),
                        Container(height: 10),
                        Text(object.title, ),
                        Container(height: 10),
                        
                        Row(
                          children: <Widget>[
                            Icon(Icons.add_location),

                          ],
                          
                        ),

                        Container(height: 200),


                        Row(
                          children: <Widget>[
                            RaisedButton(
                              textColor: Colors.white,
                              color: Colors.blue,
                              child: Text("Acheter le ticket"),
                              onPressed: () {},
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                            ),
                            Spacer(),

                            RaisedButton(
                              textColor: Colors.white,
                              color: Colors.black26,
                              child: Text("Fermer"),
                              onPressed: () {},
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                            ),

                          ],
                        )

                      ],
                    )),
              ],
            )
        ),
      ),
    );
  }
}
