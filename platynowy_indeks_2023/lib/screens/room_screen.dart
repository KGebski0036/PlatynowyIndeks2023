import 'package:flutter/material.dart';

import '../models/room.dart';

class RoomScreen extends StatefulWidget {
  static String routeName = "/roomScreen";

  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen>
    with SingleTickerProviderStateMixin {
  late Room room;
  late TabController _tabController;
  bool _isInit = false;


  @override
  void didChangeDependencies() {
    if (!_isInit) {
      room = ModalRoute.of(context)?.settings.arguments as Room;
      _isInit = true;
    }
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabPages.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(room.name)),
      body: TabBarView(
        controller: _tabController,
        children: _tabPages,
      ),
      bottomNavigationBar: Material(

        child: TabBar(
          tabs: _tabList,
          controller: _tabController,
        ),
      ),
    );
  }

  final List<Tab> _tabList = const[
    Tab(text: "Zadania", icon: Icon(Icons.task_alt_outlined)),
    Tab(text: "Urządzenia", icon: Icon(Icons.important_devices_sharp)),
  ];

  final List<Widget> _tabPages = const [
    Center(
      child: Icon(Icons.cloud),
    ),
    Center(
      child: Icon(Icons.cloud),
    ),
  ];
}
