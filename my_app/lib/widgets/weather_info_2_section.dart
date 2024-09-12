import 'package:flutter/material.dart';

class WeatherInfo2Section extends StatelessWidget {
  const WeatherInfo2Section({super.key});

  @override
  Widget build(BuildContext context) {
    // TextEditingController để theo dõi nội dung ô input
    TextEditingController emailController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // Ô nhập email
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Nhập email của bạn',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherInfoItem extends StatelessWidget {
  final String title;
  final String content;
  const WeatherInfoItem(
      {super.key, required this.title, required this.content});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title: ',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(content),
      ],
    );
  }
}
