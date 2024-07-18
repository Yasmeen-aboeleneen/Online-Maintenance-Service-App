import 'package:flutter/material.dart';
import 'package:online_maintenance_service/Core/Constants/colors.dart';
import 'package:online_maintenance_service/Views/Auth/otp_screen.dart';
import 'package:online_maintenance_service/Views/Widgets/login2.dart';

import '../../Core/Components/round_TextField.dart';
import '../../Core/Components/round_button.dart';
import 'signup_screen.dart';

class LoginWithNum extends StatefulWidget {
  const LoginWithNum({super.key});

  @override
  State<LoginWithNum> createState() => _LoginWithNumState();
}

class _LoginWithNumState extends State<LoginWithNum> {
  TextEditingController? mobile = TextEditingController();
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
                    height: h * .5,
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
                          'Login',
                          style: TextStyle(
                              fontSize: w * .034,
                              fontWeight: FontWeight.bold,
                              color: kSecondaryColor),
                        ),
                        SizedBox(
                          height: h * .02,
                        ),
                        RoundTextfield(
                          hintText: 'Enter phone number',
                          controller: mobile,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: h * .04,
                        ),
                        RoundButton(
                            title: 'Next',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const OtpScreen()));
                            },
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        SizedBox(
                          height: h * .03,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignupScreen()));
                                },
                                child: Text(
                                  "Don't have an account? Sign up",
                                  style: TextStyle(
                                      fontSize: w * .019,
                                      fontWeight: FontWeight.w500,
                                      color: kSecondaryColor),
                                ))),
                        SizedBox(
                          height: h * .03,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                color: kSecondaryColor,
                                thickness: 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Or Log in with',
                                style: TextStyle(
                                    fontSize: w * .02,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                color: kSecondaryColor,
                                thickness: 3,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        const Login2()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
