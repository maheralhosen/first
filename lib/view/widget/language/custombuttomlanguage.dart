import 'package:ecommerceproject/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonLanguage extends StatelessWidget {
  final String textbutton ;
  final void Function()? onPressed ;
  const CustomButtonLanguage({Key? key, required this.textbutton, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        onPressed: onPressed,
        child: Text(textbutton,style: const TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
      ),
    );
  }
}
