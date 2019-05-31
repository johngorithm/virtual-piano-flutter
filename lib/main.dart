import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playNote({int note}) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildNoteKey({int note, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(note: note);
        }, child: null,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildNoteKey(note: 1, color: Colors.redAccent),
              buildNoteKey(note: 2, color: Colors.orange),
              buildNoteKey(note: 3, color: Colors.yellow),
              buildNoteKey(note: 4, color: Colors.green),
              buildNoteKey(note: 5, color: Colors.teal),
              buildNoteKey(note: 6, color: Colors.blue),
              buildNoteKey(note: 7, color: Colors.deepPurpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}
