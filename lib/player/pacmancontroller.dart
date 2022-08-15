import 'package:pacman/player/pacman.dart';
import 'package:bonfire/bonfire.dart';

class PacmanController extends StateController<Pacman> {

  @override
  void onReady(Pacman component) {
    // TODO: implement onReady
    super.onReady(component);
  }

  @override
  void onRemove(Pacman component) {
    // TODO: implement onRemove
    super.onRemove(component);
  }

  @override
  void update(double dt, Pacman component) {
    // if (component.checkInterval('seeEnemy', 250, dt) == true) {
    //   component.seeEnemy(
    //     radiusVision: component!.width * 4,
    //     notObserved: _handleNotObserveEnemy,
    //     observed: (enemies) => _handleObserveEnemy(enemies.first),
    //   );
    // }
  }
}