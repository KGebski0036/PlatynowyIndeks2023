import 'package:flutter/material.dart';
import 'package:platynowy_indeks_2023/screens/info_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(InfoScreen.routeName);
    return Scaffold(
      body: const Center(child: Text("Home")),
      appBar: AppBar(),
    );
  }
}
