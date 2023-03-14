import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_work_parol_page/pages/shared_pref.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../styles/styles.dart';

class CreatePinPage extends StatefulWidget {
  const CreatePinPage({Key? key}) : super(key: key);

  @override
  _CreatePinPageState createState() => _CreatePinPageState();
}

class _CreatePinPageState extends State<CreatePinPage> {
  int index = 0;
  int reindex = 0;
  late SharedPreferences _prefs;
  static const String kListPref = 'list_pref';
  List listAddPin = [];
  List listPin = [];
  List get getListValue => listPin;
  SharedPref prefer =SharedPref();
@override
  void initState() {
    super.initState();
    SharedPreferences.getInstance()
    .then((prefs){

      // _loadListPref();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: appBarTextColor,
            )),
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text(
          'Setup PIN',
          style: appBarTextStyle,
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Use 6-digits PIN',
                style: textAppBarStyle,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Text(
                index < 4 ? 'Create your PIN' : 'Re-enter your PIN',
                style: const TextStyle(color: primaryTextColor, fontSize: 20),
              ),
            ),
            pinCircle(),
            Expanded(child: Container()),
            // Numbers(index: index),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buttonKeyboard(id: 1),
                          buttonKeyboard(id: 2),
                          buttonKeyboard(id: 3),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buttonKeyboard(id: 4),
                          buttonKeyboard(id: 5),
                          buttonKeyboard(id: 6),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buttonKeyboard(id: 7),
                          buttonKeyboard(id: 8),
                          buttonKeyboard(id: 9),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 80,
                          ),
                          buttonKeyboard(id: 0),
                          clearButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget pinCircle() {
    return Container(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          pinCircles(id: 1),
          pinCircles(id: 2),
          pinCircles(id: 3),
          pinCircles(id: 4),
        ],
      ),
    );
  }

  Widget pinCircles({required int id}) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: index != 4
            ? index >= id
                ? pinColor
                : Colors.white
            : reindex >= id
                ? clearButtonIconColor //pinColor
                : Colors.white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: pinColor,
          width: 1,
        ),
      ),
    );
  }

  Widget buttonKeyboard({required int id}) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 80, height: 80),
      child: ElevatedButton(
        child: Text(
          '$id',
          style: textStyle,
        ),
        onPressed: () {
          setState(() {});

          if (index < 4) {
            listAddPin.add(id);
            index++;
          } else {
            if (reindex < 4) {
              reindex++;
              listPin.add(id);
            }
            if (reindex == 4) {
              var trFalse =
                  const IterableEquality().equals(listAddPin, listPin);
              if (trFalse) {
                showCupertinoDialog(
                  context: context,
                  builder: createDialog,
                );
                // showDialog('Authentication');
              } else {
                showCupertinoDialog(
                  context: context,
                  builder: createDialogError,
                );
                // showDialog('Retry');
              }
            }
          }
        },
        style:keyboardButtonStyle
      ),
    );
  }

  Widget clearButton() {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 80, height: 80),
      child: ElevatedButton(
        child: const Icon(
          Icons.backspace,
          color: clearButtonIconColor,
        ),
          onLongPress: (){
            setState(() {
              index=0;
              reindex=0;
              listPin.clear();
              listAddPin.clear();
            });
          },
        onPressed: () {
          setState(() {});
          if (index > 0) {
            if (index != 4) {
              listAddPin.remove(listAddPin.last);
              index--;
            } else if (reindex > 0) {
              listPin.remove(listPin.last);
              reindex--;
            }
          }
          debugPrint('$index');
        },
        style:keyboardButtonStyle
      ),
    );
  }

  Widget createDialog(BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Your PIN has been set up successfully!',
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          CupertinoDialogAction(
            child: const Text('OK'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      );

  Widget createDialogError(BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Error! Re-enter! Please!',
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          CupertinoDialogAction(
            child: const Text('OK'),
            onPressed: () {
              index = 0;
              reindex = 0;
              listPin.clear();
              listAddPin.clear();
              Navigator.pop(context);
            },
          )
        ],
      );

  // Future<Null> _setListPIN(List<String> list) async {
  //   await _prefs.setStringList(kListPref, list);
  //   _loadListPref();
  // }
  //
  // void _loadListPref() {
  //   setState(() {
  //     listPin = _prefs.getStringList(kListPref) ?? [];
  //
  //   });
  // }
}

class MyInheritedWidget extends InheritedWidget {
  const MyInheritedWidget({
    Key? key,
    required this.myState,
    required Widget child,
  }) : super(key: key, child: child);
  final  _CreatePinPageState myState;
  static MyInheritedWidget of(BuildContext context) {
    final MyInheritedWidget? result = context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
    assert(result != null, 'No MyInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget ) {
    return myState.getListValue != oldWidget.myState.getListValue;
  }
}