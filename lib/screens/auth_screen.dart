import 'package:flutter/material.dart';
import 'package:singer/components/custom_button.dart';
import 'package:singer/components/custom_text_field.dart';
import 'package:singer/utils/app_colors.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isSignIn = true;
  bool isForgotPassword = false;

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
            Center(
              child: Image.asset(
                'assets/images/logo_landscape.png',
                width: 300,
              ),
            ),
            Center(
              child: Text(
                isForgotPassword
                    ? 'Forgot Password?'
                    : isSignIn
                    ? 'Welcome Back!'
                    : "Let's get started!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade900,
                ),
              ),
            ),
            SizedBox(height: 3),
            Center(
              child: Text(
                isForgotPassword
                    ? 'Enter your email'
                    : isSignIn
                    ? 'Login to existing Singer Account'
                    : 'Create a new Singer Account',
                style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
              ),
            ),
            SizedBox(height: 30),
            CustomTextField(label: 'Email', icon: Icons.email),
            SizedBox(height: 20),
            if (!isForgotPassword)
              CustomTextField(
                label: 'Password',
                icon: Icons.password,
                isPassword: true,
              ),
            if (!isSignIn && !isForgotPassword)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CustomTextField(
                  label: 'Confirm Password',
                  icon: Icons.password,
                  isPassword: true,
                ),
              ),
            if (isSignIn)
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isSignIn = false;
                      isForgotPassword = true;
                    });
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
              ),
            SizedBox(height: 25),
            CustomButton(
              text: isForgotPassword
                  ? 'Send Reset Email'
                  : isSignIn
                  ? 'Sign In'
                  : 'Create Account',
              onTap: () {
                setState(() {});
              },
            ),
            SizedBox(height: 20),
            if (!isForgotPassword)
              Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Text(
                  isForgotPassword
                      ? 'Remember your password?'
                      : isSignIn
                      ? "Don't have an account?"
                      : 'Already have an account',
                ),
              ),
            SizedBox(height: 20),
            CustomButton(
              text: isForgotPassword
                  ? 'Sign In'
                  : isSignIn
                  ? 'Create Account'
                  : 'Sign In',
              isOutlinedButton: true,
              onTap: () {
                setState(() {
                  isForgotPassword = false;
                  isSignIn = isForgotPassword ? true : !isSignIn;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
