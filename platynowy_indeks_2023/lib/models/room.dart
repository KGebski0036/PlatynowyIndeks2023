class Room {
  static int counter = 0;

  String name = "pokój $counter";

  Room(String inputName) {
    if (inputName != "") {
      name = inputName;
    } else {
      counter++;
    }
  }
}
