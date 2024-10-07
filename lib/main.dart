// lib/main.dart
import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // Import halaman utama

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Set HomePage sebagai halaman utama
    );
  }
}
