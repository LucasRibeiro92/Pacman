import 'package:bonfire/bonfire.dart';
import 'package:pacman/enemies/ghost1spritesheet.dart';

class Ghost1 extends SimpleEnemy with
    ObjectCollision,
    AutomaticRandomMovement {

  Ghost1(Vector2 position)
      : super(
    position: position, //required
    size: Vector2.all(16), //required
    life: 1,
    speed: 80,
    initDirection: Direction.down,
    animation: SimpleDirectionAnimation(
      idleRight: Ghost1SpriteSheet.idleRight, //required
      runRight: Ghost1SpriteSheet.movingRight, //required
      runLeft: Ghost1SpriteSheet.movingLeft,
      runUp: Ghost1SpriteSheet.movingUp,
      runDown: Ghost1SpriteSheet.movingDown,
    ),
  ){
    setupCollision(
        CollisionConfig(
          collisions: [
            CollisionArea.circle(radius: 7),
          ]
        ));
  }
  /*
  @override
  void receiveDamage(double damage, int from) {
    /// Called when the enemy receive damage
    super.receiveDamage(damage, from);
    die();
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