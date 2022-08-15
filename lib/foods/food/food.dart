import 'package:bonfire/bonfire.dart';
import 'package:flutter/widgets.dart';
import 'package:pacman/common/commonspritesheet.dart';

class Food extends GameDecoration with Sensor {

  Food(Vector2 position)
      : super.withSprite(
    sprite: CommonSpriteSheet.foodSprite,
    position: position,
    size: Vector2.all(16),
  );

  @override
  void onContact(GameComponent collision) {
    if (collision is Player) {
      removeFromParent();
    }
  }

}