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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          title: const Text("Naghamat App"),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10.0,
            children:[
              ElevatedButton.icon(
                onPressed: (){
                  playSound(1);
                  },
          icon: const Icon(Icons.music_note),
          label: const Text("NOTE 1 🎵"),
          style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: const TextStyle(fontSize: 18),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          ),
          ),
          ElevatedButton.icon(
          onPressed: (){
                playSound(2);
              },
          icon: const Icon(Icons.music_note),
          label: const Text("NOTE 2 🎵"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton.icon(
                  onPressed: (){
                    playSound(3);
                  } ,
                  icon: const Icon(Icons.music_note),
                label: const Text("NOTE 3 🎵"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton.icon(
                onPressed: (){
                  playSound(4);
                },
                icon: const Icon(Icons.music_note),
                label: const Text("NOTE 4 🎵"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton.icon(
                onPressed: (){
                  playSound(5);
                },
                icon: const Icon(Icons.music_note),
                label: const Text("NOTE 5 🎵"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton.icon(
                onPressed: (){
                  playSound(6);
                },
                icon: const Icon(Icons.music_note),
                label: const Text("NOTE 6 🎵"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton.icon(
                onPressed: (){
                  playSound(7);
                },
                icon: const Icon(Icons.music_note),
                label: const Text("NOTE 7 🎵"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
