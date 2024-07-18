import 'package:flutter/material.dart';
import 'package:online_maintenance_service/Views/Home/home_screen.dart';

import '../../Core/Constants/colors.dart';

class VerifyMessageScreen extends StatelessWidget {
  const VerifyMessageScreen({super.key});

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
          Column(children: [
            SizedBox(
              height: h * .06,
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Image.asset(
                "assets/img/logo.png",
                width: w * 0.5,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: h * .15,
            ),
            const Text(
              "Your Account\nHas Been Verified\nSuccessfully",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryTextColor,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: h * .2,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
          ]),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
