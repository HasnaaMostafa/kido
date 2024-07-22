import 'package:flutter/material.dart';

import 'features/onboarding/presentation/views/onboarding_view.dart';

void main() {
  runApp(const KidoApp());
}

class KidoApp extends StatelessWidget {
  const KidoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnBoardingView(),
    );
  }
}
