import 'package:flutter/material.dart';
import 'package:platynowy_indeks_2023/screens/home_screen.dart';
import 'package:platynowy_indeks_2023/screens/info_screen.dart';
import 'package:platynowy_indeks_2023/screens/room_screen.dart';
import 'package:platynowy_indeks_2023/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'providers/user_home_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserHomeProvider(),
      child: MaterialApp(
        title: 'Pani domu',
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        theme: ThemeData.light(),
        darkTheme: ThemeData.from(
          colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            background: Color.fromARGB(135, 77, 85, 158),
            onBackground: Color.fromARGB(255, 148, 255, 255),
            error: Colors.red,
            onError: Colors.redAccent,
            primary: Color.fromARGB(255, 123, 94, 204),
            onPrimary: Color.fromARGB(255, 210, 194, 255),
            secondary: Color.fromARGB(255, 74, 121, 204),
            onSecondary: Color.fromARGB(255, 168, 200, 255),
            surface: Color.fromARGB(255, 77, 59, 128),
            onSurface: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          InfoScreen.routeName: (context) => const InfoScreen(),
          RoomScreen.routeName: (context) => const RoomScreen(),
        },
      ),
    );
  }
}
