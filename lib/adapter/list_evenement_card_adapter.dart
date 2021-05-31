import 'package:flutter/material.dart';
import 'package:football_ticket/models/evenement.dart';
import 'package:football_ticket/data/img.dart';
import 'package:football_ticket/data/my_colors.dart';
import 'package:football_ticket/views/cardEventDetail.dart';

import 'package:toast/toast.dart';




class ListevenementCardAdapter {
  List items = <evenement>[];
  List itemsTile = <ItemTile>[];

  ListevenementCardAdapter(this.items, onItemClick) {
    for (var i = 0; i < items.length; i++) {
      itemsTile.add(ItemTile(index: i, object: items[i], onClick: onItemClick));
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
        assert(onClick != null),
        super(key: key);

  void onItemClick(evenement obj) {
    onClick(index, obj);
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //onItemClick(object);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cardEventDetail()),
        );

        },
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
        child: Card(
            margin: EdgeInsets.all(0), elevation: 2,
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4)),
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
                            Text(object.subtitle),
                            Spacer(),
                            Text(object.date),
                          ],
                        ),
                        Container(height: 10),
                        Text(object.title),
                        Container(height: 10),
                      ],
                    )),
              ],
            )
        ),
      ),
    );
  }
}
