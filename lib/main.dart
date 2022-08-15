import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:pacman/game.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.fullScreen();
  }

  /*BonfireInjector().put((i) => KnightController());
  BonfireInjector().putFactory((i) => GoblinController());
  BonfireInjector().putFactory((i) => CritterController());
  BonfireInjector().put((i) => BarLifeController());*/

  runApp(
    MaterialApp(
      home: Menu(),
    ),
  );
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Center(
              child: RichText(
                text: TextSpan(
                    text: 'Pac-man',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                    children: [
                      TextSpan(
                        text: '  by Lucas C. Ribeiro',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _buildButton(context, 'Start the game', () {
              _navTo(context, Game());
            }),
          ],
        ),
      ),
    );
  }
  Widget _buildButton(BuildContext context, String label, VoidCallback onTap) {
    return Center(
      child: SizedBox(
        width: 200,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),

            ),
          ),
          child: Text(
            style: TextStyle(fontSize: 15, color: Colors.black),
            label
          ),
          onPressed: onTap,
        ),
      ),
    );
  }
  void _navTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}




