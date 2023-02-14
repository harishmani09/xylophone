import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void  playSound(String nameOfFile) async{
    final player = AudioPlayer();
    await player.play(AssetSource(nameOfFile));
  }

   Widget buildKey( String fileName,  Color color){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(fileName);
        },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        // child: Container(
        //   color: keyColor,
        // ),
        child: Text(''),
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
              buildKey('note1.wav',Colors.red),
              buildKey('note2.wav',Colors.green),
              buildKey('note3.wav',Colors.cyan),
              buildKey('note4.wav',Colors.teal),
              buildKey('note5.wav',Colors.amber),
              buildKey('note6.wav',Colors.white),
              buildKey('note7.wav',Colors.brown),
            ],

          ),
        ),
      ),
    );
  }
}
