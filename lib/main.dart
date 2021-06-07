import 'package:flutter/material.dart';
import 'package:miniature_palm_tree/google-maps-v2/goomap.dart';
import 'package:miniature_palm_tree/google-maps/google_maps_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miniature Palm Tree',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GooMap(),
    );
  }
}
