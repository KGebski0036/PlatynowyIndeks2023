import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:platynowy_indeks_2023/models/user_home.dart';
import 'package:platynowy_indeks_2023/providers/user_home_provider.dart';
import 'package:platynowy_indeks_2023/widges/user_circle_avatar.dart';
import 'package:provider/provider.dart';

class DrawerAccountHeader extends StatelessWidget {
  const DrawerAccountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    UserHome userHome = Provider.of<UserHomeProvider>(context).userHome;

    return UserAccountsDrawerHeader(
      accountName: Text(
        userHome.user.name,
        style: GoogleFonts.merriweather(fontSize: 20),
      ),
      accountEmail: Text(
        "Kod domu: ${userHome.id}",
        style:
            GoogleFonts.roboto(color: Theme.of(context).colorScheme.onPrimary),
      ),
      currentAccountPicture: const CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(size: 42),
      ),
      otherAccountsPictures: [
        ...userHome.otherInmates.map((e) => UserCircleAvatar(e)).toList()
      ],
      otherAccountsPicturesSize: const Size.square(52),
    );
  }
}
