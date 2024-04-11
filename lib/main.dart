import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:testapp/models/item_models.dart';

import 'component/category.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  HomePage();

  List<ItemModels> itemList = [
    ItemModels(Sound: 'note1.wav', color: Color(0xffED4640)),
    ItemModels(Sound: 'note2.wav', color: Color(0xffEB9232)),
    ItemModels(Sound: 'note3.wav', color: Color(0xffEADA58)),
    ItemModels(Sound: 'note4.wav', color: Color(0xff3AA75A)),
    ItemModels(Sound: 'note5.wav', color: Color(0xff0E9185)),
    ItemModels(Sound: 'note6.wav', color: Color(0xff0D92DD)),
    ItemModels(Sound: 'note7.wav', color: Color(0xff9D30A5)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2F3A41),
          title: Center(
            child: Text('Flutter Tune'),
          ),
        ),
        body: Column(
          children: getList(itemList),
        ),
      ),
    );
  }
}

List<Widget> getList(List<ItemModels> lists) {
  List<Widget> listItem = [];

  for (int i = 0; i < lists.length; i++) {
    listItem.add(Category(item: lists[i]));
  }

  return listItem;
}
