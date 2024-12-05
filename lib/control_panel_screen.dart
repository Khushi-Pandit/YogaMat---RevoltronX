import 'package:flutter/material.dart';
import 'music_and_sound_screen.dart';

class ControlPanelScreen extends StatelessWidget {
  void startMode(BuildContext context, String mode) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        content: Text(
          "$mode started!",
          style: TextStyle(color: Colors.white, fontSize: 16), // Added text styling
        ),
        duration: Duration(seconds: 2), // Controls how long the SnackBar is displayed
        behavior: SnackBarBehavior.floating, // Makes the SnackBar float
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Adds rounded corners
        ),
        margin: EdgeInsets.all(16), // Adds margin if behavior is floating
      ),
    );

    print('$mode started!!');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Control Panel',style: TextStyle(color: Colors.white),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MusicAndSoundScreen(),));
            }, child: Icon(Icons.music_note,color: Colors.white,))
          ],
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => startMode(context,'Warm-Up Mode🥲'),
                child: Text('Start Warm-Up',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  // primary: Colors.teal,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              ElevatedButton(
                onPressed: () => startMode(context,'Relaxation Mode😌'),
                child: Text('Begin Relaxation Mode',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  // primary: Colors.teal,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
