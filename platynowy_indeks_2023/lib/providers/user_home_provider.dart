import 'package:flutter/cupertino.dart';
import 'package:platynowy_indeks_2023/dummyData/dumy_data.dart';
import 'package:platynowy_indeks_2023/models/inmate.dart';
import 'package:platynowy_indeks_2023/models/user_home.dart';

class UserHomeProvider with ChangeNotifier {
  final UserHome _userHome = dummyUserHome;

  UserHome get userHome {
    return _userHome;
  }

  Inmate get userAccount {
    return _userHome.user;
  }

  List<Inmate> get otherInmate {
    return [..._userHome.otherInmates];
  }

  void updateUserAccount(Inmate newUser) {
    _userHome.user = newUser;
    notifyListeners();
  }
}
