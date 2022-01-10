// import 'package:collection/collection.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class MyModelState extends InheritedWidget {
//
//   // late BuildContext context;
//   int index = 0;
//   List listAddPin = [];
//   List listPin = [1,1,1, 1];
//   int reindex = 0;
//
//   // void proverka() {
//   //   if (index == 4) {
//   //     var trFalse = const IterableEquality().equals(listAddPin, listPin);
//   //     if (trFalse) {
//   //       authDialog(context); // showDialog('Authentication success');
//   //     } else {
//   //       authDialogError(context); // showDialog('Authentication failed');
//   //     }
//   //   }
//   // }
//
//   Widget authDialog(BuildContext context) {
//     return const CupertinoAlertDialog(
//       title: Text(
//         'Authentication success',
//         style: TextStyle(fontSize: 16),
//       ),
//       insetAnimationDuration: Duration(seconds: 3),
//     );
//   }
//
//   Widget authDialogError(BuildContext context) => CupertinoAlertDialog(
//         title: const Text(
//           'Error! Re-enter! Please!',
//           style: TextStyle(fontSize: 20),
//         ),
//         actions: [
//           CupertinoDialogAction(
//             child: const Text('OK'),
//             onPressed: () {
//               index = 0;
//               // reindex = 0;
//               // listPin.clear();
//               listAddPin.clear();
//               Navigator.pop(context);
//             },
//           )
//         ],
//       );
//
//   Widget createDialog(BuildContext context) => CupertinoAlertDialog(
//         title: const Text(
//           'Your PIN has been set up successfully!',
//           style: TextStyle(fontSize: 20),
//         ),
//         actions: [
//           CupertinoDialogAction(
//             child: const Text('OK'),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           )
//         ],
//       );
//    authDialog1(BuildContext context) => CupertinoAlertDialog(
//         title: const Text(
//           'Your PIN has been set up successfully!',
//           style: TextStyle(fontSize: 20),
//         ),
//         actions: [
//           CupertinoDialogAction(
//             child: const Text('OK'),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           )
//         ],
//       );
//
//   Widget createDialogError(BuildContext context) => CupertinoAlertDialog(
//         title: const Text(
//           'Error! Re-enter! Please!',
//           style: TextStyle(fontSize: 20),
//         ),
//         actions: [
//           CupertinoDialogAction(
//             child: const Text('OK'),
//             onPressed: () {
//               index = 0;
//               reindex = 0;
//               listPin.clear();
//               listAddPin.clear();
//               Navigator.pop(context);
//             },
//           )
//         ],
//       );
// }
