import 'package:flutter/material.dart';
import 'package:online_maintenance_service/Core/Components/round_TextField.dart';
import 'package:online_maintenance_service/Core/Components/round_button.dart';
import 'package:online_maintenance_service/Core/Constants/colors.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController? email = TextEditingController();
  TextEditingController? password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kVeryWhitheColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Transform.scale(
            scale: 1.1,
            child: Image.asset(
              'assets/img/bg.png',
              width: w,
              height: h,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            width: w,
            height: h,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: h * .1,
                  ),
                  Image.asset(
                    'assets/img/logo.png',
                    fit: BoxFit.fitWidth,
                    width: w * .38,
                  ),
                  SizedBox(
                    height: h * .01,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 25),
                    width: double.maxFinite,
                    height: h * .6,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: const BoxDecoration(
                        color: kVeryWhitheColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: kPrimaryColor,
                              spreadRadius: 4,
                              blurRadius: 6,
                              offset: Offset(0, 2))
                        ]),
                    child: Column(
                      children: [
                        Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: w * .034,
                              fontWeight: FontWeight.bold,
                              color: kSecondaryColor),
                        ),
                        SizedBox(
                          height: h * .02,
                        ),
                        const RoundTextfield(hintText: 'Email'),
                        SizedBox(
                          height: h * .04,
                        ),
                        const RoundTextfield(hintText: 'Password')
                      ],
                    ),
                  ),
                  RoundButton(
                      title: 'Sign in',
                      onPressed: () {},
                      fontSize: 20,
                      fontWeight: FontWeight.bold)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
