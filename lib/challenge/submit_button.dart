import 'package:flutter/cupertino.dart';

class SubmitButton extends StatelessWidget {
  final String buttonText;
  final Function handleSubmit;

  const SubmitButton({
    @required this.buttonText,
    @required this.handleSubmit
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
          child: Text(buttonText),
          onPressed: handleSubmit,
          color: CupertinoColors.activeBlue
        ),
    );
  }
}