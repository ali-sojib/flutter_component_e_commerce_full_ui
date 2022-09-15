import 'package:flutter/material.dart';

import 'screens/onboarding/onboarding_page.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme(context).lightTheme,
      home: const OnboardingPage(),
    );
  }
}
