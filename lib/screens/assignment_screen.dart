import 'package:flutter/cupertino.dart';
import 'package:quiz/challenge/submit_button.dart';
import 'package:quiz/challenge/textfield.dart';
import 'package:quiz/challenge/titleText.dart';

class Assignment extends StatefulWidget {
  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  String _inputText = 'App Generic Title';
  final _text = TextEditingController();

  void _setText() {
    if(_text.text.isNotEmpty) {
      setState(()=> _inputText = _text.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          navLargeTitleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: CupertinoColors.activeGreen,
          ),
        ),
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Cupertino Store'),
        ),
        child: SafeArea(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            child: Column(
              children: <Widget>[
                TitleText(title: _inputText,),
                TextField(
                  placeHolder: 'Write here',
                  controller: _text,
                ),
                SubmitButton(
                  handleSubmit: _setText, 
                  buttonText: 'Submit',
                )
              ],
            ),
          )
        ),
      )
    );
  }
}