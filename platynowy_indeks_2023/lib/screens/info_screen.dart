import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  static const String routeName = "/info";

  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("Info")),
      appBar: AppBar(),
    );
  }
}
