import 'dart:async';

import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';
import 'package:platynowy_indeks_2023/screens/home_screen.dart';
import 'package:platynowy_indeks_2023/screens/info_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) =>
      checkFirstSeen(Navigator.of(context));

  @override
  Widget build(BuildContext context) {
    return const Text("Loading...");
  }

  Future checkFirstSeen(NavigatorState navigator) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    bool seen = sharedPreferences.getBool("seen") ?? false;

    if (seen) {
      navigator.pushReplacementNamed(HomeScreen.routeName);
    } else {
      await sharedPreferences.setBool("seen", true);
      navigator.pushReplacementNamed(InfoScreen.routeName);
    }
  }
}
