import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/foods/food/food.dart';
import 'package:pacman/enemies/ghost1.dart';
import 'package:pacman/enemies/ghost2.dart';
import 'package:pacman/enemies/ghost3.dart';
import 'package:pacman/player/pacman.dart';
import 'package:pacman/interface/pacmaninterface.dart';

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return BonfireTiledWidget(
          joystick: Joystick(
            keyboardConfig: KeyboardConfig(
                keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows
            ),
            directional: JoystickDirectional(),
          ),
          map: TiledWorldMap(
            'pacmanmap.tmj',
            forceTileSize: Size(16, 16),
          ),
          components: [
            Ghost1(Vector2(26*16, 1*16)),
            Ghost2(Vector2(26*16, 3*16)),
            Ghost3(Vector2(26*16, 5*16)),
            Food(Vector2(2*16, 1*16)),
            Food(Vector2(3*16, 1*16)),
            Food(Vector2(4*16, 1*16)),
            Food(Vector2(5*16, 1*16)),
            Food(Vector2(6*16, 1*16)),
            Food(Vector2(7*16, 1*16)),
            Food(Vector2(8*16, 1*16)),
            Food(Vector2(9*16, 1*16)),
            Food(Vector2(10*16, 1*16)),
            Food(Vector2(11*16, 1*16)),
            Food(Vector2(12*16, 1*16)),
            Food(Vector2(15*16, 1*16)),
            Food(Vector2(16*16, 1*16)),
            Food(Vector2(17*16, 1*16)),
            Food(Vector2(18*16, 1*16)),
            Food(Vector2(19*16, 1*16)),
            Food(Vector2(20*16, 1*16)),
            Food(Vector2(21*16, 1*16)),
            Food(Vector2(22*16, 1*16)),
            Food(Vector2(23*16, 1*16)),
            Food(Vector2(24*16, 1*16)),
            Food(Vector2(25*16, 1*16)),
            Food(Vector2(26*16, 1*16)),
            Food(Vector2(1*16, 2*16)),
            Food(Vector2(6*16, 2*16)),
            Food(Vector2(12*16, 2*16)),
            Food(Vector2(15*16, 2*16)),
            Food(Vector2(21*16, 2*16)),
            Food(Vector2(26*16, 2*16)),
          ],
          player: Pacman(
              Vector2(1*16, 1*16)),
          interface: PacmanInterface(),
          background: BackgroundColorGame(Colors.black),
          /*overlayBuilderMap: {
            'topbar': (context, game) => PacmanBarWidget(),
          },
          initialActiveOverlays: [
            'topbar',
          ],*/
          cameraConfig: CameraConfig(
            smoothCameraEnabled: true,
            smoothCameraSpeed: 2,
          ),
          showCollisionArea: false,
        );
      },
    );
  }
}