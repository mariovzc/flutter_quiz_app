import 'package:flutter/cupertino.dart';

class TitleText extends StatelessWidget {

  final String title;

  TitleText({
    @ required this.title}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}