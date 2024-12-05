import 'package:flutter/material.dart';

class MusicAndSoundScreen extends StatefulWidget {
  @override
  _MusicAndSoundScreenState createState() => _MusicAndSoundScreenState();
}

class _MusicAndSoundScreenState extends State<MusicAndSoundScreen> {
  bool isPlaying = false;

  void toggleSound() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music and Sound Options',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isPlaying ? 'Playing: Relaxing Sound' : 'Sound is Off',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: toggleSound,
                child: Text(isPlaying ? 'Stop Sound' : 'Play Sound',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  // primary: isPlaying ? Colors.green : Colors.teal,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
