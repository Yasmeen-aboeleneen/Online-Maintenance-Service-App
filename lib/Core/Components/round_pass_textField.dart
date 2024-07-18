import 'package:flutter/material.dart';
import 'package:online_maintenance_service/Core/Constants/colors.dart';

class RoundPassTextfield extends StatefulWidget {
  const RoundPassTextfield({
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
  State<RoundPassTextfield> createState() => _RoundPassTextfieldState();
}

class _RoundPassTextfieldState extends State<RoundPassTextfield> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

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
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText,
          cursorColor: kSecondaryColor,
          style: const TextStyle(
            color: kSecondaryColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                child: GestureDetector(
                  onTap: _toggleObscured,
                  child: Icon(
                    _obscured
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded,
                    size: 24,
                    color: kSecondaryColor,
                  ),
                ),
              ),
              contentPadding: const EdgeInsets.all(15),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontSize: w * .018,
                color: kPlaceholder,
              ))),
    );
  }
}
