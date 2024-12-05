import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'device_connection_screen.dart';
import 'control_panel_screen.dart';
import 'music_and_sound_screen.dart';
import 'feature_showcase_screen.dart';
import 'ota_update_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Yoga Mat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.light(
          primary: Colors.teal,
          secondary: Colors.teal, // Replaced accentColor with colorScheme.secondary
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
          bodyMedium: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
          bodySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.teal,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            textStyle: TextStyle(fontSize: 18),
          ),
        ),
        scaffoldBackgroundColor: Color(0xFFF5F5F5), // Light grey background for relaxation feel
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/deviceConnection': (context) => DeviceConnectionScreen(),
        '/controlPanel': (context) => ControlPanelScreen(),
        '/musicAndSound': (context) => MusicAndSoundScreen(),
        '/featureShowcase': (context) => FeatureShowcaseScreen(),
        '/otaUpdates': (context) => OTAUpdateScreen(),
      },
    );
  }
}
