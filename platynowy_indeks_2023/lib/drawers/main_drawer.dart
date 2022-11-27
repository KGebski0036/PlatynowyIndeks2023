import 'package:flutter/material.dart';
import 'package:platynowy_indeks_2023/drawers/drawer_account_header.dart';
import 'package:platynowy_indeks_2023/drawers/drawer_navigation.dart';
import 'package:platynowy_indeks_2023/screens/home_screen.dart';
import 'package:platynowy_indeks_2023/screens/info_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: const [
        DrawerAccountHeader(),
        DrawerNavigation(title: "Pokoje w Twoim domu", icon: Icons.home, routeName: HomeScreen.routeName),
        Divider(thickness: 0, height: 8, color: Colors.transparent,),
        DrawerNavigation(title: "Zadania domowe", icon: Icons.task_outlined, routeName: InfoScreen.routeName),
        Divider(thickness: 0, height: 8, color: Colors.transparent,),
        DrawerNavigation(title: "Menedżer urządzeń", icon: Icons.devices, routeName: InfoScreen.routeName),
        Divider(thickness: 0, height: 8, color: Colors.transparent,),
        DrawerNavigation(title: "Twój profil", icon: Icons.supervised_user_circle, routeName: InfoScreen.routeName),
        Divider(thickness: 0, height: 8, color: Colors.transparent,),
        DrawerNavigation(title: "Osoby połączone z domem", icon: Icons.supervised_user_circle, routeName: InfoScreen.routeName),
        Divider(thickness: 0, height: 8, color: Colors.transparent,),
        DrawerNavigation(title: "Informacje o aplikacji", icon: Icons.coffee_maker_rounded, routeName: InfoScreen.routeName),
      ]),
    );
  }
}
