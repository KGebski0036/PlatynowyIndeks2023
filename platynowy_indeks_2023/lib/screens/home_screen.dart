import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/main";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("Home")),
      appBar: AppBar(),
    );
  }
}
