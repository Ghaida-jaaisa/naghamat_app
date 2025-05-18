import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  // دالة لتشغيل الصوت
  void playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource('music-2.mp3'));
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
          child: ElevatedButton.icon(
            onPressed: playSound,
            icon: const Icon(Icons.music_note),
            label: const Text("شغّل النغمة 🎵"),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              textStyle: const TextStyle(fontSize: 18),
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
