import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:online_maintenance_service/Core/Constants/colors.dart';
import 'package:online_maintenance_service/Views/Auth/verify_MessageScreen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kVeryWhitheColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/img/otp_bg.png",
            width: w,
            height: h,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            width: w,
            height: h,
            child: SingleChildScrollView(
              child: SizedBox(
                width: w,
                height: h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: h * .25,
                    ),
                    const Text.rich(
                      TextSpan(
                        text: "Please verify your",
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                        children: [
                          TextSpan(
                            text: "\nCall Number",
                            style: TextStyle(
                                color: kPrimaryTextColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * .033,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 35),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(0, 2))
                          ]),
                      child: const Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                            text:
                                "Please enter the 4 digit verification\nCode sent to your call number\n",
                            children: [
                              TextSpan(
                                  text: "15243568789",
                                  style: TextStyle(
                                    color: kPrimaryTextColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  )),
                              TextSpan(
                                  text: " via SMS message \n or ",
                                  style: TextStyle(
                                    color: kPrimaryTextColor,
                                    fontSize: 17,
                                  )),
                              TextSpan(
                                  text: "CHANGE",
                                  style: TextStyle(
                                      color: kPrimaryTextColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline)),
                              TextSpan(
                                  text: " your number.",
                                  style: TextStyle(
                                    color: kPrimaryTextColor,
                                    fontSize: 17,
                                  )),
                            ],
                            style: TextStyle(
                              color: kPrimaryTextColor,
                              fontSize: 17,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OtpTextField(
                      numberOfFields: 4,
                      borderColor: Colors.white,
                      showFieldAsBox: true,
                      fieldWidth: 60,
                      fieldHeight: 60,
                      filled: true,
                      borderRadius: BorderRadius.circular(10),
                      fillColor: Colors.white,
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {},
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Resend OTP",
                          style: TextStyle(
                            color: kPrimaryTextColor,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const VerifyMessageScreen()));
                      },
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        width: 59,
                        height: 59,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/img/next.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
