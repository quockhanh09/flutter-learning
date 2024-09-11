import 'package:flutter/material.dart';

class WeatherDetailScreen extends StatelessWidget {
  const WeatherDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets\images\bg_light.png"),
        fit: BoxFit.cover,
      )),
      child: SafeArea(
          child: Stack(
        children: [
          const Positioned.fill(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "10.82, 206.24",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(""),
            ],
          ))
        ],
      )),
    ));
  }
}
