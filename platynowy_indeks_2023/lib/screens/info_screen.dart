import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:platynowy_indeks_2023/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InfoScreen extends StatelessWidget {
  static const String routeName = "/info";

  final String infoText =
      "Aplikacja Pani Domu służy do inteligentnej obsługi twojego domu, do inteligentnego zarządzania zadaniami domowymi oraz sterowaniem inteligentnymi urządzeniami domowymi.";

  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Informacje",
                  style: TextStyle(
                    fontSize: 25,
                  )),
              background: Image.asset(
                "assets/Info.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Text(infoText,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoSlab(fontSize: 26)),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () => acceptButton(Navigator.of(context)),
            child: Text(
              "Ok",
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void acceptButton(NavigatorState navigator) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    await sharedPreferences.setBool("seen", true);
    navigator.pushReplacementNamed(HomeScreen.routeName);
  }
}
