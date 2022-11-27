import 'package:flutter/material.dart';

class DrawerNavigation extends StatelessWidget {
  final String title;
  final IconData icon;
  final String routeName;

  const DrawerNavigation({
    super.key,
    required this.title,
    required this.icon,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Theme.of(context).colorScheme.primary,
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(routeName);
      },
    );
  }
}
