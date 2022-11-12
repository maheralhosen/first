import 'package:flutter/material.dart';

class CoustomTextTitleAuth extends StatelessWidget {
  final String text ;
  const CoustomTextTitleAuth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: TextAlign.center, style: Theme
        .of(context)
        .textTheme
        .headline2,);

  }
}
