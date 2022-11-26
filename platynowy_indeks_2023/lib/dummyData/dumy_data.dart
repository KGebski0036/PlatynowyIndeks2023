import 'package:platynowy_indeks_2023/models/room.dart';
import 'package:platynowy_indeks_2023/models/room_task.dart';

List<Room> dummyRooms = [
  Room("Kuchnia", id: "0", roomTaskIds: ["a", "b"]),
  Room("Łazięka", id: "1", roomTaskIds: ["a", "c"]),
  Room("Sypialnia", id: "2", roomTaskIds: ["c", "b"]),
];

List<RoomTask> dummyRoomsTasks = [
  RoomTask(
      id: "a",
      title: "Posprzątaj pokój",
      description: "Zrób ot natychmiast",
      roomsIds: ["0", "1"]),
  RoomTask(
      id: "b",
      title: "Przygotuj kawę",
      description: "Sypana bez cukru",
      roomsIds: ["0", "2"]),
  RoomTask(
      id: "c",
      title: "Umuj okna",
      description: "Nie używaj to tego znowu kreta, bo Cię zabiję",
      roomsIds: ["1", "2"]),
];
