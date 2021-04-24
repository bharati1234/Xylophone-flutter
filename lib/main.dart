import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({Color color,int soundNumber})
  {
    return Expanded(
      child: TextButton(
        //we can use this line also to give bgcolor to text button
        //style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red),),
        //otherwise this line
        style: TextButton.styleFrom(
          backgroundColor: color,
         // shadowColor: Colors.yellowAccent,
          //elevation: 5,
        ),
        onPressed: (){
          playSound(soundNumber);
        },
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,


            children: <Widget>[
              buildKey(color:Colors.red,soundNumber:1),
              buildKey(color:Colors.yellow,soundNumber:2),
              buildKey(color:Colors.green,soundNumber:3),
              buildKey(color:Colors.pink,soundNumber:4),
              buildKey(color:Colors.blue,soundNumber:5),
              buildKey(color:Colors.cyan,soundNumber:6),
              buildKey(color:Colors.indigoAccent,soundNumber:7),



             // SizedBox.fromSize(),
             /* Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shadowColor: Colors.pink,
                    elevation: 5,
                  ),
                  onPressed: (){
                    playSound(2);
                  },

                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shadowColor: Colors.blue,
                    elevation: 5,
                  ),
                  onPressed: (){
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shadowColor: Colors.yellow,
                    elevation: 5,
                  ),
                  onPressed: (){
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shadowColor: Colors.pink,
                    elevation: 5,
                  ),
                  onPressed: (){
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    shadowColor: Colors.yellowAccent,
                    elevation: 5,
                  ),
                  onPressed: (){
                    playSound(7);
                  },

                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shadowColor: Colors.tealAccent,
                    elevation: 5,
                  ),
                  onPressed: (){
                    playSound(7);
                  },

                ),
              ),*/

            ],
          ),
        ),
      ),
    );
  }
}
