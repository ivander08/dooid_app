import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset(
            'assets/images/register_login/register_login_background.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}