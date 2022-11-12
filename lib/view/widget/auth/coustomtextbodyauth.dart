import 'package:ecommerceproject/core/constant/color.dart';
import 'package:flutter/material.dart';

class CoustomTextBodyAuth extends StatelessWidget {
  final String text ;
  const CoustomTextBodyAuth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Text(
            text,
            textAlign: TextAlign.center, style: Theme
            .of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: AppColor.grey)));

  }
}
