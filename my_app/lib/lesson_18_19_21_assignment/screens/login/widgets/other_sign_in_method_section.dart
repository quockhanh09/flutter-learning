import 'package:flutter/material.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/login/widgets/sign_in_method_item.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';


class OtherSignInMethodSection extends StatelessWidget {
  const OtherSignInMethodSection({
    super.key,
  });

  void _showErrorMessage(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text(
            'Or sign in with',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  // Hiển thị thông báo lỗi đăng nhập Google
                  _showErrorMessage(context, 'Đăng nhập bằng Google thất bại!!! xin hãy thử lại');
                },
                child: const SignInMethodItem(
                    imgPath: "assets/images/gg_ic.png", title: "Google"),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  // Hiển thị thông báo lỗi đăng nhập Facebook
                  _showErrorMessage(context, 'Đăng nhập bằng Facebook thất bại!!! xin hãy thử lại');
                },
                child: const SignInMethodItem(
                    imgPath: "assets/images/fb_ic.png", title: "Facebook"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
