import 'package:flutter/material.dart';
import 'package:traddee/launcher/launcher_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'traddee',
      theme: new ThemeData(),
      home: new LauncherPage(),
    );
  }
}
