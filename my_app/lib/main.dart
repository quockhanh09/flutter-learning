import 'package:flutter/material.dart';
//  import 'content.dart';  
import 'weather_detail_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const WeatherHomeScreen(), 
      home: const WeatherDetailScreen(), 
    );
  }
}
