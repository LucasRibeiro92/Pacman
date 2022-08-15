import 'package:bonfire/bonfire.dart';

class Ghost1SpriteSheet {
  static Future<SpriteAnimation> _sequenceImage(String filename) {
    return SpriteAnimation.load(
        'enemies/ghost1/$filename',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.1,
            textureSize: Vector2(16, 16)));
  }

  static Future<SpriteAnimation> get idleRight =>
      _sequenceImage('idle_right.PNG');
  static Future<SpriteAnimation> get movingRight =>
      _sequenceImage('moving_right.PNG');
  static Future<SpriteAnimation> get movingLeft =>
      _sequenceImage('moving_left.png');
  static Future<SpriteAnimation> get movingUp =>
      _sequenceImage('moving_up.png');
  static Future<SpriteAnimation> get movingDown =>
      _sequenceImage('moving_down.png');

}