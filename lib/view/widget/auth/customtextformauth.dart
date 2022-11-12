import 'package:flutter/material.dart';

class CoustomTextFormAuth extends StatelessWidget {
  final String hinttext;

  final String labletxt;

  final IconData icondata;

  final TextEditingController? mycontroller;

  final String? Function(String?) valid ;

  final bool isNumber ;
  final bool? obscureText ;
  final void Function()? onTapIcon ;

  const CoustomTextFormAuth(
      {Key? key,
      required this.hinttext,
      required this.labletxt,
      required this.icondata,
      required this.mycontroller, required this.valid, required this.isNumber, this.obscureText, this.onTapIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false ? false : true,
        keyboardType: isNumber ? const TextInputType.numberWithOptions(decimal: true) : TextInputType.text ,
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child:  Text(labletxt)),
          hintText: hinttext,
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          suffixIcon:  InkWell(child: Icon(icondata), onTap: onTapIcon,),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
