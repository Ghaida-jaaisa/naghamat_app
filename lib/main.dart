import 'package:flutter/material.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          title: Text("Naghamat App"),
        backgroundColor: Colors.purple,
        centerTitle: true,),
        body: Column(

        ),
      ),
    );
  }
}
