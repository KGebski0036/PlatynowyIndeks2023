class Room {
  static int counter = 0;

  String id;
  String name = "pokój $counter";
  List<String> roomTaskIds;

  Room(
    String inputName, {
    required this.id,
    required this.roomTaskIds,
  }) {
    if (inputName != "") {
      name = inputName;
    } else {
      counter++;
    }
  }
}
