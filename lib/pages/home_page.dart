import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_work_parol_page/pages/authentication.dart';
import 'package:flutter_test_work_parol_page/pages/create_pin.dart';

import '../styles/styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: buttonsStyle,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreatePinPage(),
                    ));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
                child: Text(
                  'Create PIN',
                  style: textStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: buttonsStyle,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthenticationPINPage(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Authentication PIN',
                  style: textStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// class MyInheritedWidget extends InheritedWidget {
//   final _MyHomePageState myState;
//
//   const MyInheritedWidget( {
//     Key? key,
//     required this.myState,
//     required Widget child,
//   }) : super(key: key, child: child);
//   @override
//   bool updateShouldNotify(MyInheritedWidget oldWidget) {
//     return myState.counterValue != oldWidget.myState.counterValue;
//   }
//   static MyInheritedWidget of(BuildContext context) {
//     final MyInheritedWidget? result = context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
//     assert(result != null, 'No MyInheritedWidget found in context');
//     return result!;
//   }
//
//
// }
