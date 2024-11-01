import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_learning/my_movies/features/auth/login/login_screen.dart';
import 'package:flutter_learning/my_movies/features/home/presentation/home_screen.dart';


class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
 
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          User? user = snapshot.data;
          if (user == null) {
            return const LoginScreen(); // Màn hình đăng nhập nếu chưa đăng nhập
          }
          return const HomeScreen(); // Màn hình chính nếu đã đăng nhập
        }
        return const Scaffold(
          body: Center(
            child:
                CircularProgressIndicator(), // Hiển thị spinner trong lúc đợi
          ),
        );
      },
    );
  }
}
