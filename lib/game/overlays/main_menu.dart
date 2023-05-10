import 'package:flutter/material.dart';
import 'package:platformer/game/game.dart';

import '../game_play.dart';

class MainMenu extends StatelessWidget {
  static const id = 'MainMenu';
  final SimplePlatformer gameRef;

  const MainMenu({super.key, required this.gameRef});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  gameRef.overlays.remove(id);
                  gameRef.add(GamePlay());
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 80),),
                child: const Text('Start',
                style: TextStyle(fontSize: 25),
                ),
                
              ),
            ),
          ],
        )
      )
    );
  }
}
