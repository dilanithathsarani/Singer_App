import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:singer/screens/auth_screen.dart';
import 'package:singer/utils/navigation_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      NavigationHelper.goWithReplace(context, AuthScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(child: Image.asset('assets/images/logo.png', width: 300)),
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CupertinoActivityIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
