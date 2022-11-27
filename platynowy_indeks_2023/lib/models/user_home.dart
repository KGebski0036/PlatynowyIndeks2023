import 'package:platynowy_indeks_2023/models/inmate.dart';

class UserHome {
  String id;
  Inmate user;
  List<Inmate> otherInmates;

  UserHome(this.id, {required this.user, required this.otherInmates});
}
