import 'package:flutter/material.dart';
import 'package:lazy_load/real_item.dart';

// ignore: must_be_immutable
class Proxy extends StatelessWidget implements RealItem {
  String name;

  Proxy(this.name);

  Widget item;

  @override
  Widget showItem() {
    if (item == null) {
      item = RealItem(name).showItem();
    } else {
      print('item is exist');
    }
    return item;
  }

  @override
  Widget build(BuildContext context) {
    print('buil item');
    return showItem();
  }
}
