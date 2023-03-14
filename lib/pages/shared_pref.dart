import 'package:flutter/material.dart';
import 'package:flutter_test_work_parol_page/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  List listPin = [];
  late SharedPreferences _prefs;
  static const String kListPref = 'list_pref';

  Future<Null> _setListPIN(List<String> list) async {
    await _prefs.setStringList(kListPref, list);
    _loadListPref();
  }

  void _loadListPref() {
    listPin = _prefs.getStringList(kListPref) ?? [];
  }
}
//
// class MyInheritedWidget extends InheritedWidget {
//    MyInheritedWidget({
//     Key? key,
//     required this.myState,
//     required Widget child,
//   }) : super(key: key, child: child);
//   final  _MyHomePageState myState;
//   static MyInheritedWidget of(BuildContext context) {
//     final MyInheritedWidget? result = context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
//     assert(result != null, 'No MyInheritedWidget found in context');
//     return result!;
//   }
//
//   @override
//   bool updateShouldNotify(MyInheritedWidget oldWidget ) {
//     return myState.counterValue != oldWidget.myState.;
//   }
// }