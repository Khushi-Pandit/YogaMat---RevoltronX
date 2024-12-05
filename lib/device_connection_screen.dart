import 'package:flutter/material.dart';
import 'control_panel_screen.dart';

class DeviceConnectionScreen extends StatefulWidget {
  @override
  _DeviceConnectionScreenState createState() => _DeviceConnectionScreenState();
}

class _DeviceConnectionScreenState extends State<DeviceConnectionScreen> {
  bool isConnected = false;

  void toggleConnection() {
    setState(() {
      isConnected = !isConnected;
      if(isConnected){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ControlPanelScreen(),));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Device Connection',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: Duration(seconds: 1),
                child: Icon(
                  isConnected ? Icons.check_circle : Icons.device_hub,
                  key: ValueKey<bool>(isConnected),
                  color: isConnected ? Colors.green : Colors.red,
                  size: MediaQuery.of(context).size.width * 0.4, // Dynamic size
                ),
              ),
              SizedBox(height: 24),
              Text(
                isConnected ? 'Connected to Smart Yoga Mat' : 'Not Connected',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              ElevatedButton(
                onPressed: toggleConnection,
                child: Text(isConnected ? 'Disconnect' : 'Connect',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
