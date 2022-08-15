import 'package:bonfire/bonfire.dart';
import 'package:pacman/enemies/ghost3spritesheet.dart';

class Ghost3 extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {

  Ghost3(Vector2 position)
      : super(
    position: position, //required
    size: Vector2.all(16), //required
    life: 10,
    speed: 80,
    initDirection: Direction.left,
    animation: SimpleDirectionAnimation(
      idleRight: Ghost3SpriteSheet.idleRight, //required
      runRight: Ghost3SpriteSheet.movingRight, //required
      runLeft: Ghost3SpriteSheet.movingLeft,
      runUp: Ghost3SpriteSheet.movingUp,
      runDown: Ghost3SpriteSheet.movingDown,
    ),
  ){
    setupCollision(
        CollisionConfig(
            collisions: [
              CollisionArea.circle(radius: 6),
            ]
        ));
  }

  /*@override
  void receiveDamage(double damage, int from) {
    /// Called when the enemy receive damage
    super.receiveDamage(damage, from);
  }*/

  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        simpleAttackMelee(
          damage: 1,
          size: Vector2(16, 16),

          direction: lastDirection,
          withPush: true,
        );
      },
      radiusVision: 64,
    );
    super.update(dt);
  }

  @override
  void die() {
    /// Called when the enemy die
    super.die();
  }
}