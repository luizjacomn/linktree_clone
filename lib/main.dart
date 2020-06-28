import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'luizjacomn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LinksLandingPage(),
    );
  }
}

class LinksLandingPage extends StatelessWidget {
  const LinksLandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Text('Teste'),
    );
  }
}
