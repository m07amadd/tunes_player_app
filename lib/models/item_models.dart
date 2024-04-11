import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemModels {
  String Sound;
  Color color;
  ItemModels({required this.Sound, required this.color});

  void playSound() {
    final player = AudioPlayer();

    player.play(AssetSource(Sound));
  }
}
