import 'package:flutter/material.dart';

import '../models/room.dart';

class RoomScreen extends StatefulWidget {
  static String routeName = "/roomScreen";

  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  late Room room;
  bool _isInit = false;

  @override
  void didChangeDependencies() {
    if(!_isInit){
      room = ModalRoute.of(context)?.settings.arguments as Room;
      _isInit = true;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(room.name)),
    );
  }
}
