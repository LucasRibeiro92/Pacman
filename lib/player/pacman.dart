import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/common/commonspritesheet.dart';
import 'package:pacman/player/pacmancontroller.dart';
import 'package:pacman/player/playerspritesheet.dart';

class Pacman extends SimplePlayer with
    ObjectCollision, UseStateController<PacmanController> {
  Pacman(Vector2 position) :super(
    position: position,
    life: 1,
    speed: 78,
    initDirection: Direction.right,
    animation: SimpleDirectionAnimation(
        idleRight: PlayerSpriteSheet.idleRight,
        runRight: PlayerSpriteSheet.movingRight,
        runLeft: PlayerSpriteSheet.movingLeft,
        runUp: PlayerSpriteSheet.movingUp,
        runDown: PlayerSpriteSheet.movingDown
    ),
    size: Vector2(16, 16),
  ) {
    setupCollision(
        CollisionConfig(
            collisions: [
              CollisionArea.circle(radius: 7.1),
            ])
    );
  }

  /*
  @override
  void onContact(GameComponent collision) {
    if (collision is Enemy) {
      add(
        AnimatedObjectOnce(
          animation: CommonSpriteSheet.playerDying,
            position: position,
            size: Vector2(16,16)
        )
      );
      super.die();
      removeFromParent();
    }
  }
  */
}