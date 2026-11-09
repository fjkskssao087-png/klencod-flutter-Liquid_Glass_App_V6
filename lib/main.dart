import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const LiquidGlassApp());
}

class LiquidGlassApp extends StatelessWidget {
  const LiquidGlassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liquid Glass',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0A0F),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF0A84FF),
          secondary: Color(0xFF5E5CE6),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}