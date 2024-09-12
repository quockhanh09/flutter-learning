import 'package:flutter/material.dart';

class WeatherInfoItem extends StatelessWidget {
  final String title;
  final String content;
  const WeatherInfoItem({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title $content",
      style: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
