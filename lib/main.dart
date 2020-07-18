import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  void sound(String music) {
    final player = AudioCache();
    player.play('$music.mp3');
  }

  Expanded buildkey({Color color, String soundno}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          sound('$soundno');
        },
        child: Text(
          '$soundno',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[600],
          title: Center(
            child: Text(
              'Music System',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                //fontFamily:'SourceSansPro'
              ),
            ),
          ),
        ),
        backgroundColor: Colors.teal[300],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.blue[900], soundno: 'Better'),
              buildkey(color: Colors.black, soundno: 'Habits'),
            ],
          ),
        ),
      ),
    );
  }
}
