import 'package:flutter/cupertino.dart';

class TextField extends StatelessWidget {
  final TextEditingController controller;
  final String placeHolder;

  TextField({
    @required this.controller,
    @required this.placeHolder
  });
  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      placeholder: placeHolder,
    );
  }
}