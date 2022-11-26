import 'package:flutter/material.dart';
import 'package:platynowy_indeks_2023/drawers/main_drawer.dart';
import 'package:platynowy_indeks_2023/dummyData/dumy_data.dart';
import 'package:platynowy_indeks_2023/widges/room_card.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/main";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text("Twój Dom"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => RoomCard(dummyRooms[index]),
        itemCount: dummyRooms.length,
      ),
    );
  }
}
