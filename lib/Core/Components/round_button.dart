// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:online_maintenance_service/Core/Constants/colors.dart';

enum RoundButtonType { kPrimaryColor, kSecondaryColor, line }

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.title,
    this.type = RoundButtonType.kPrimaryColor,
    required this.onPressed,
    required this.fontSize,
    required this.fontWeight,
  }) : super(key: key);

  final String title;
  final RoundButtonType type;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: h * .03,
        width: w * .03,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: type == RoundButtonType.kPrimaryColor
              ? kPrimaryColor
              : type == RoundButtonType.kSecondaryColor
                  ? kSecondaryColor
                  : Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: type == RoundButtonType.line
              ? Border.all(color: kSecondaryColor, width: 1)
              : null,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: type == RoundButtonType.line
                  ? kPrimaryTextColor
                  : Colors.white,
              fontSize: w * .03,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
