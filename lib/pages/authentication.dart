import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../styles/styles.dart';

import 'package:collection/equality.dart' show IterableEquality;
//flutter run --no-sound-null-safety

class AuthenticationPINPage extends StatefulWidget {
  const AuthenticationPINPage({Key? key}) : super(key: key);

  @override
  _AuthenticationPINPageState createState() => _AuthenticationPINPageState();
}

class _AuthenticationPINPageState extends State<AuthenticationPINPage> {
  int index = 0;
  List listAddPin = [];
  List listPin = [1, 1, 1, 1];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/5),
              child: const Text(
                'Enter your PIN',
                style: TextStyle(color: primaryTextColor, fontSize: 20),
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
                          // Container(
                          //   width: 80,
                          //   height: 80,
                          //   alignment: Alignment.center,
                          //   decoration: BoxDecoration(
                          //     color: buttonBackGroundColor,
                          //     borderRadius: BorderRadius.circular(50),
                          //   ),
                          //   child: IconButton(
                          //     onPressed: () {
                          //       setState(() {});
                          //       if (index < 4) {
                          //         listAddPin.add(1);
                          //         index++;
                          //       }
                          //       trueFalse();
                          //       debugPrint('$listAddPin');
                          //       debugPrint('$index');
                          //     },
                          //     icon: Text(
                          //       '1',
                          //       style: textStyle,
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //     width: 80,
                          //     height: 80,
                          //     alignment: Alignment.center,
                          //     decoration: BoxDecoration(
                          //       color: buttonBackGroundColor,
                          //       borderRadius: BorderRadius.circular(50),
                          //     ),
                          //     child: IconButton(
                          //         onPressed: () {
                          //           setState(() {});
                          //           if (index < 4) {
                          //             listAddPin.add(2);
                          //             index++;
                          //           }
                          //           trueFalse();
                          //
                          //           debugPrint('$listAddPin');
                          //
                          //           debugPrint('$index');
                          //         },
                          //         icon: Text(
                          //           '2',
                          //           style: textStyle,
                          //         ))),
                          // Container(
                          //     width: 80,
                          //     height: 80,
                          //     alignment: Alignment.center,
                          //     decoration: BoxDecoration(
                          //       color: buttonBackGroundColor,
                          //       borderRadius: BorderRadius.circular(50),
                          //     ),
                          //     child: IconButton(
                          //         onPressed: () {
                          //           setState(() {});
                          //           if (index < 4) {
                          //             listAddPin.add(3);
                          //             index++;
                          //           }
                          //           trueFalse();
                          //
                          //           debugPrint('$listAddPin');
                          //
                          //           debugPrint('$index');
                          //         },
                          //         icon: Text(
                          //           '3',
                          //           style: textStyle,
                          //         ))),
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
                          buttonKeyboard(id: 6)
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
                          buttonKeyboard(id: 9)
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
            ),
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
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: index >= 1 ? pinColor : Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: pinColor,
                width: 1,
              ),
            ),
          ),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: index >= 2 ? pinColor : Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: pinColor,
                width: 1,
              ),
            ),
          ),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: index >= 3 ? pinColor : Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: pinColor,
                width: 1,
              ),
            ),
          ),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: index == 4 ? pinColor : Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: pinColor,
                width: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget createAuthDialog(BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Authentication success!',
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

  Widget createAuthDialogError(BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Authentication failed!',
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          CupertinoDialogAction(
            child: const Text('OK'),
            onPressed: () {
              index = 0;
              listAddPin.clear();
              Navigator.pop(context);
            },
          )
        ],
      );

  void trueFalse() {
    if (index == 4) {
      var trFalse = const IterableEquality().equals(listAddPin, listPin);
      if (trFalse) {
        showCupertinoDialog(
            context: context,
            builder: createAuthDialog); // showDialog('Authentication failed');

      } else {
        showCupertinoDialog(
            context: context,
            builder:
                createAuthDialogError); // showDialog('Authentication failed');

      }
    }
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
          }
          trueFalse();

          debugPrint('$listAddPin');

          debugPrint('$index');
        },
        style: keyboardButtonStyle

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
            listAddPin.clear();
          });
        },
        onPressed: () {
          setState(() {});
          if (index > 0) {
            listAddPin.remove(listAddPin.last);
            index--;
          }
          debugPrint('$index');
        },
        style:keyboardButtonStyle
      ),
    );
  }

  Future showDialog(String message) async {
    await Fluttertoast.cancel();
    Fluttertoast.showToast(
      textColor: Colors.black,
      msg: message,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.white,
    );
  }
}

class Numbers extends StatefulWidget {
  Numbers({Key? key, required this.index}) : super(key: key);
  int index = 0;

  @override
  _NumbersState createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                            if (widget.index < 4) {
                              widget.index++;
                            }
                            debugPrint('${widget.index}');
                          },
                          icon: Text(
                            '1',
                            style: textStyle,
                          ))),
                  Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                            if (widget.index < 4) {
                              widget.index++;
                            }
                            debugPrint('${widget.index}');
                          },
                          icon: Text(
                            '2',
                            style: textStyle,
                          ))),
                  Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                            if (widget.index < 4) {
                              widget.index++;
                            }
                            debugPrint('${widget.index}');
                          },
                          icon: Text(
                            '3',
                            style: textStyle,
                          ))),
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
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                            if (widget.index < 4) {
                              widget.index++;
                            }
                            debugPrint('${widget.index}');
                          },
                          icon: Text(
                            '4',
                            style: textStyle,
                          ))),
                  Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                            if (widget.index < 4) {
                              widget.index++;
                            }
                            debugPrint('${widget.index}');
                          },
                          icon: Text(
                            '5',
                            style: textStyle,
                          ))),
                  Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                            if (widget.index < 4) {
                              widget.index++;
                            }
                            debugPrint('${widget.index}');
                          },
                          icon: Text(
                            '6',
                            style: textStyle,
                          ))),
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
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                            if (widget.index < 4) {
                              widget.index++;
                            }
                            debugPrint('${widget.index}');
                          },
                          icon: Text(
                            '7',
                            style: textStyle,
                          ))),
                  Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                            if (widget.index < 4) {
                              widget.index++;
                            }
                            debugPrint('${widget.index}');
                          },
                          icon: Text(
                            '8',
                            style: textStyle,
                          ))),
                  Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                            if (widget.index < 4) {
                              widget.index++;
                            }
                            debugPrint('${widget.index}');
                          },
                          icon: Text(
                            '9',
                            style: textStyle,
                          ))),
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
                  Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {});
                            widget.index++;
                            debugPrint('${widget.index}');
                          },
                          icon: Text(
                            '0',
                            style: textStyle,
                          ))),
                  Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: buttonBackGroundColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {});
                          if (widget.index > 0) widget.index--;
                          debugPrint('${widget.index}');
                        },
                        icon: const Icon(
                          Icons.backspace_outlined,
                          color: primaryTextColor,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KeyboardNumber extends StatefulWidget {
  int n;
  late Function() onPressed;
  late int index = 0;

  KeyboardNumber(
      {Key? key, required this.n, required this.onPressed, required this.index})
      : super(key: key);

  @override
  State<KeyboardNumber> createState() => _KeyboardNumberState();
}

class _KeyboardNumberState extends State<KeyboardNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: buttonBackGroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        '${widget.n}',
        textAlign: TextAlign.center,
        style: textStyle,
      ),
    );
  }
}

class PinNumber extends StatelessWidget {
  TextEditingController textEditingController;

  // OutlineInputBorder outlineInputBorder;

  PinNumber({
    Key? key,
    required this.textEditingController,
    // required this.outlineInputBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: pinColor, borderRadius: BorderRadius.circular(50)),
      width: 10,
      height: 10,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        textAlign: TextAlign.center,
        maxLines: 1,
        maxLength: 1,
        obscureText: true,
        decoration: const InputDecoration(fillColor: pinColor, filled: true),
        cursorHeight: 0,
        style: const TextStyle(
          color: pinColor,
          fontSize: 0,
          backgroundColor: pinColor,
        ),
      ),
    );
  }
}
