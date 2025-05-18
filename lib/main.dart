import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  // دالة لتشغيل الصوت
  void playSound(int musicNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('music-$musicNumber.mp3'));
  }

  Widget myButton(int musicNumber, Color buttonColor, String buttonText) {
   return Expanded(
      child: ElevatedButton.icon(
        onPressed: (){
          playSound(musicNumber);
        },
        icon: const Icon(Icons.music_note),
        label:  Text(buttonText),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: const TextStyle(
              fontSize: 18),
          backgroundColor: buttonColor,
          iconColor: Colors.purple,
          foregroundColor: Colors.black87,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          title: const Text("Naghamat App"),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10.0,
            children: [
              myButton(1, Colors.red, "Note 1"),
              myButton(2, Colors.yellow, "Note 2"),
              myButton(3, Colors.blue, "Note 3"),
              myButton(4, Colors.orange, "Note 4"),
              myButton(5, Colors.green, "Note 5"),
              myButton(6, Colors.pink, "Note 6"),
              myButton(7, Colors.indigo, "Note 7"),
            ],
          ),
        ),
      ),
    );
  }
}
