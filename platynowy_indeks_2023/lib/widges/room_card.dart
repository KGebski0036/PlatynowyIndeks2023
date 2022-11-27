import 'package:flutter/material.dart';

import 'package:platynowy_indeks_2023/models/room.dart';
import 'package:platynowy_indeks_2023/screens/room_screen.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard(this.room, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Theme.of(context).colorScheme.primary),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
      child: ListTile(
        title: Text(room.name),
        trailing: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed(RoomScreen.routeName, arguments: room);
          },
          icon: const Icon(Icons.add),
          tooltip: "dodaj zadanie",
        ),
      ),
    );
  }
}
