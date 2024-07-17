import 'package:flutter/material.dart';
import 'package:online_maintenance_service/Core/Constants/colors.dart';

class RoundTextfield extends StatelessWidget {
  const RoundTextfield({
    Key? key,
    required this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.right,
  }) : super(key: key);

  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? right;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.height;
    return Container(
      height: h * .06,
      width: w,
      decoration: BoxDecoration(
          color: kVeryWhitheColor,
          border: Border.all(color: kPlaceholder.withOpacity(.5), width: .5),
          borderRadius: BorderRadius.circular(25)),
      child: TextField(
          autocorrect: true,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          cursorColor: kSecondaryColor,
          style: const TextStyle(
            color: kPrimaryColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(15),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 10,
                color: kPlaceholder,
              ))),
    );
  }
}
