import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void pressButton(int nodeNumber){
    final player = AudioCache();
    player.play('note$nodeNumber.mp3');
  }
 Expanded buKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {pressButton(soundNumber);},
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buKey(color: Colors.deepPurple, soundNumber: 1),
              buKey(color: Colors.red, soundNumber: 2),
              buKey(color: Colors.pink, soundNumber: 3),
              buKey(color: Colors.yellow, soundNumber: 4),
              buKey(color: Colors.teal, soundNumber: 5),
              buKey(color: Colors.white, soundNumber: 6),
            ],
          ),
        ),
      ),
    );
  }
}
