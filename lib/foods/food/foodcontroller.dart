import 'package:bonfire/bonfire.dart';
import 'package:pacman/foods/food/food.dart';

class FoodGeneratorController extends StateController<Food> {

  final _positionsToSpawn = [
    Vector2(2*16, 1*16),
    Vector2(3*16, 1*16),
    Vector2(4*16, 1*16),
    Vector2(5*16, 1*16),
    Vector2(6*16, 1*16),
    Vector2(7*16, 1*16),
    Vector2(8*16, 1*16),
    Vector2(9*16, 1*16),
    Vector2(10*16, 1*16),
    Vector2(11*16, 1*16),
    Vector2(12*16, 1*16),
    Vector2(15*16, 1*16),
    Vector2(16*16, 1*16),
    Vector2(17*16, 1*16),
    Vector2(18*16, 1*16),
    Vector2(19*16, 1*16),
    Vector2(20*16, 1*16),
    Vector2(21*16, 1*16),
    Vector2(22*16, 1*16),
    Vector2(23*16, 1*16),
    Vector2(24*16, 1*16),
    Vector2(25*16, 1*16),
    Vector2(26*16, 1*16)
  ];

  @override
  void update(double dt, component) {}
}