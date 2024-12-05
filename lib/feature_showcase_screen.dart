import 'package:flutter/material.dart';

class FeatureShowcaseScreen extends StatelessWidget {
  final List<Map<String, String>> features = [
    {'title': 'Feature 1', 'details': 'Details about Feature 1', 'image': 'assets/images/R.png'},
    {'title': 'Feature 2', 'details': 'Details about Feature 2', 'image': 'assets/images/R.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product & Feature Showcase',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: features.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 8,
              margin: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: ListTile(
                leading: Image.asset(features[index]['image']!),
                title: Text(features[index]['title']!,style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(features[index]['details']!),
                onTap: () {
                  // Implement navigation to details if needed
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
