import 'package:flutter/material.dart';
import 'package:singer/components/custom_text_field.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/logo_landscape.png', width: 200),
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade900,
              ),
            ),
            Text(
              'Login to existing Singer Account',
              style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
            ),
            SizedBox(height: 30),
            CustomTextField(label: 'Email', icon: Icons.email),
            SizedBox(height: 20),
            CustomTextField(
              label: 'Password',
              icon: Icons.password,
              isPassword: true,
            ),
          ],
        ),
      ),
    );
  }
}
