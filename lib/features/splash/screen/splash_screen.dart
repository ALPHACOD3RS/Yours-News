import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';

import 'package:yours_news/features/onboarding/screen/onboarding_screen.dart';
import 'package:yours_news/shared/constant/colors.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const OnBoarding()),
  );
    });

    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Image.asset(
          'assets/png/logo.png',
          width: 400,
          height: 400,
        ),
      ),
    );
  }
}
