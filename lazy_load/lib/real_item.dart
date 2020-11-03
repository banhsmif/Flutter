import 'package:flutter/material.dart';
import 'package:lazy_load/item.dart';

class RealItem implements Item {
  String name;
  RealItem(this.name);

  @override
  Widget showItem() {
    print('the real item');
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle
          ),
          child: Icon(Icons.people),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 26,
              color: Colors.black
            ),
          ),
        )
      ],),
    );
  }
}
