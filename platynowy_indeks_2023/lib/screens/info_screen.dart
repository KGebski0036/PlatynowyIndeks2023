import 'package:flutter/material.dart';
import 'package:platynowy_indeks_2023/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InfoScreen extends StatelessWidget {
  static const String routeName = "/info";

  final String infoText =
      "Aplikacja 'Pani Domu' służy do inteligentnej obsługi twojego domu, do inteligentnego zarządzania zadaniami domowymi oraz sterowaniem inteligentnymi urządzeniami domowymi.";

  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.info,
            size: 90,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Text(
                infoText,
                style: const TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => acceptButton(Navigator.of(context)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Center(child: Text("Ok", style: TextStyle(color: Colors.white, fontSize: 18),),),
              ),
            ),
          )
        ],
      ),
      appBar: AppBar(title: const Text("Informacje"), centerTitle: true),
    );
  }

  void acceptButton(NavigatorState navigator) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    await sharedPreferences.setBool("seen", true);
    navigator.pushReplacementNamed(HomeScreen.routeName);
  }
}
