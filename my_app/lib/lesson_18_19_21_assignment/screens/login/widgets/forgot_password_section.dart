import 'package:flutter/material.dart';

class ForgotPasswordSection extends StatelessWidget {
  const ForgotPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          // Khi nhấn vào sẽ chuyển sang màn hình ForgotPasswordScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ForgotPasswordScreen(),
            ),
          );
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Text(
            'Forgot password?',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Color(0xffFF8036),
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password screen'), // Tiêu đề trên AppBar
        backgroundColor: Color(0xff1A2232),
      ),
      body: Container(
        color: Colors.black, // Nền đen
        child: const Center(
          child: Text(
            'Incomming Feature',
            style: TextStyle(
              color: Colors.grey, // Chữ màu trắng
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
