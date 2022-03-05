import 'dart:async';

import 'package:chatly_mobile/feature/home/home.dart';
import 'package:chatly_mobile/utils/utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startSplash();
  }

  void _startSplash() {
    const duration = Duration(seconds: 1);

    Timer(
      duration,
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.gradientTwo,
      body: Center(
        child: Text(
          'Chatly 💬',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: appColors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
