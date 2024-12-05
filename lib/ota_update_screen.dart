import 'package:flutter/material.dart';

class OTAUpdateScreen extends StatelessWidget {
  final String currentVersion = "1.0.0";

  void checkForUpdates() {
    print('Checking for updates...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTA Updates',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Version: $currentVersion',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: checkForUpdates,
                child: Text('Check for Updates',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  // primary: Colors.teal,
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
