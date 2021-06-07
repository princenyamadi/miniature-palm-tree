import 'package:flutter/material.dart';
import 'package:miniature_palm_tree/permissions_box/permission_box.dart';

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
      home: PermissionBox(),
    );
  }
}
