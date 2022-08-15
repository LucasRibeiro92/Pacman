import 'dart:async';

import 'package:bonfire/bonfire.dart';
import 'package:pacman/common/commonspritesheet.dart';

class PacmanInterface extends GameInterface
    /*with UseStateController<BarLifeController>*/{
  @override
  Future<void> onLoad() async {
    add(TextComponent(
      text: 'arroz com feijão',
      position: Vector2.all(30),
      size: Vector2.all(50),
    ));/*
    add(TextComponent(
      text: 'arroz com feijão',
      position: Vector2(30, 130),
      size: Vector2.all(50),
    ));
    add(TextComponent(
      text: 'arroz com feijão',
      position: Vector2(30, 230),
      size: Vector2.all(50),
    ));
    add(TextComponent(
      text: 'arroz com feijão',
      position: Vector2(30, 330),
      size: Vector2.all(50),
    ));*/
    super.onLoad();
  }
}