import 'package:flutter/material.dart';
import 'package:yogamat/ota_update_screen.dart';
import 'feature_showcase_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 1,),
            Text('Smart Yoga Mat', style: TextStyle(fontSize: 28,color: Colors.white),),
            SizedBox(width: 1,),
          ],
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to Smart Yoga Mat!',
                style: TextStyle(color: Colors.teal,fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Text(
                'Experience the next generation of yoga with our smart mat. Connect and explore amazing features.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1), // Dynamic height spacing
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/deviceConnection');
                },
                child: Text('Connect to Mat',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 10,),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FeatureShowcaseScreen(),));
                },
                child: Text('About Us',style: TextStyle(color: Colors.teal),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 10,),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OTAUpdateScreen(),));
                },
                child: Text('Update',style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
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
