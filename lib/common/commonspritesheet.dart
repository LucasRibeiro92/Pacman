import 'package:bonfire/bonfire.dart';

class CommonSpriteSheet {
  /*
  static Future<SpriteAnimation> get torchAnimated => SpriteAnimation.load(
    "itens/torch_spritesheet.png",
    SpriteAnimationData.sequenced(
      amount: 6,
      stepTime: 0.1,
      textureSize: Vector2(16, 16),
    ),
  );

  static Future<Sprite> get barrelSprite => Sprite.load('itens/barrel.png');
  static Future<Sprite> get columnSprite => Sprite.load('itens/column.png');
  static Future<Sprite> get spikesSprite => Sprite.load('itens/spikes.png');
  */

  static Future<SpriteAnimation> get playerDying => SpriteAnimation.load(
    "player/die.png",
    SpriteAnimationData.sequenced(
      amount: 14,
      stepTime: 0.01,
      textureSize: Vector2(16, 16),
    ),
  );

  static Future<Sprite> get foodSprite =>
      Sprite.load('decoration/foods/food/food.png');
  static Future<Sprite> get zeroSprite =>
      Sprite.load('decoration/text/zero.png');
  static Future<Sprite> get oneSprite =>
      Sprite.load('decoration/text/one.png');
  static Future<Sprite> get twoSprite =>
      Sprite.load('decoration/text/two.png');
  static Future<Sprite> get threeSprite =>
      Sprite.load('decoration/text/three.png');
  static Future<Sprite> get fourSprite =>
      Sprite.load('decoration/text/four.png');
  static Future<Sprite> get fiveSprite =>
      Sprite.load('decoration/text/five.png');
  static Future<Sprite> get sixSprite =>
      Sprite.load('decoration/text/six.png');
  static Future<Sprite> get sevenSprite =>
      Sprite.load('decoration/text/seven.png');
  static Future<Sprite> get eightSprite =>
      Sprite.load('decoration/text/eight.png');
  static Future<Sprite> get nineSprite =>
      Sprite.load('decoration/text/nine.png');

}