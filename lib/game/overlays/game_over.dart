import 'package:flutter/material.dart';
import 'package:platformer/game/game.dart';


import '../game_play.dart';
import 'main_menu.dart';


class GameOver extends StatefulWidget {
  static const id = 'GameOver';
  final SimplePlatformer gameRef;

  const GameOver({super.key, required this.gameRef});

  @override
  State<GameOver> createState() => _GameOverState();
}

class _GameOverState extends State<GameOver> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withAlpha(100),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  widget.gameRef.overlays.remove(GameOver.id);
                  widget.gameRef.resumeEngine();
                  widget.gameRef.removeAll(widget.gameRef.children);
                  widget.gameRef.add(GamePlay());
                },
                child: const Text('Restart'),
              ),
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  widget.gameRef.overlays.remove(GameOver.id);
                  widget.gameRef.resumeEngine();
                  widget.gameRef.removeAll(widget.gameRef.children);
                  widget.gameRef.overlays.add(MainMenu.id);
                },
                child: const Text('Exit'),
              ), 
            )
          ],
        )
      )
    );
  }
}