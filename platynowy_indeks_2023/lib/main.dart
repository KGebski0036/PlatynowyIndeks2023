import 'package:flutter/material.dart';
import 'package:platynowy_indeks_2023/screens/home_screen.dart';
import 'package:platynowy_indeks_2023/screens/info_screen.dart';
import 'package:platynowy_indeks_2023/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pani domu',
      theme: ThemeData.dark(useMaterial3: true),
      home: const SplashScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        InfoScreen.routeName: (context) => const InfoScreen(),
      },
    );
  }
}
