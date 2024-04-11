import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:testapp/models/item_models.dart';

class Category extends StatelessWidget {
  Category({super.key, required this.item});

  ItemModels item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        item.playSound();
      },
      child: Container(
        height: 99,
        color: item.color,
      ),
    );
  }
}
