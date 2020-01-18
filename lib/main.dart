import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    player.loadAll([
      'note1.wav',
      'note2.wav',
      'note3.wav',
      'note4.wav',
      'note5.wav',
      'note6.wav',
      'note7.wav',
    ]);

    Widget buildKey(Color color, int soundNum) {
      return Expanded(
        child: FlatButton(
          color: color,
          child: SizedBox(),
          onPressed: () {
            player.play('note$soundNum.wav');
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(Colors.red, 1),
                buildKey(Colors.orange, 2),
                buildKey(Colors.green, 3),
                buildKey(Colors.indigo, 4),
                buildKey(Colors.blue, 5),
                buildKey(Colors.purple, 6),
                buildKey(Colors.pink, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
