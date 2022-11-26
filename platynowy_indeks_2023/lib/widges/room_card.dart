import 'package:flutter/material.dart';

import 'package:platynowy_indeks_2023/models/room.dart';
import 'package:platynowy_indeks_2023/screens/room_screen.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard(this.room, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(room.name),
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(RoomScreen.routeName, arguments: room);
              },
              icon: const Icon(Icons.add),
              tooltip: "dodaj zadanie",
            )
          ],
        ),
      ),
    );
  }
}
