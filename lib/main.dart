import 'package:flutter/material.dart';
import 'package:prueba/screens/account_screen.dart';
import 'package:prueba/screens/home_screen.dart';
import 'package:prueba/screens/verify_screen.dart';
import 'package:prueba/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: AppTheme.theme,
      routes: {
        'home': (context) => const HomeScreen(),
        'verify': (context) => const VerifyScreen(),
        'account': (context) => const AccountScreen()
      },
    );
  }
}
