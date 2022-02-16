import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            title: Text(
              "Play Sounds",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Player(),
          backgroundColor: Colors.white,
        ));
  }
}

class Player extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    if (i >= 1 && i <= 7) player.play('note$i.wav');
  }

  Expanded BuildKey(int i, Color c) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(i);
        },
        color: c,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BuildKey(1, Colors.red),
        BuildKey(2, Colors.orange),
        BuildKey(3, Colors.yellow),
        BuildKey(4, Colors.green),
        BuildKey(5, Colors.blue),
        BuildKey(6, Colors.indigo),
        BuildKey(7, Colors.pinkAccent),
      ],
    );
  }
}
