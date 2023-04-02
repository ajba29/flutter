import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget{
  const XylophoneApp({super.key});


  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(Color color, int soundNumber){
    return Expanded(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
          ),
          child: null,
          onPressed: (){
            playSound(soundNumber);
          },
        ),
    );
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.blue, 2),
              buildKey(Colors.green, 3),
              buildKey(Colors.orange, 4),
              buildKey(Colors.yellow, 5),
              buildKey(Colors.purple, 6),
              buildKey(Colors.white, 7)
            ],
          ),
        )
      ),
    );
  }


}