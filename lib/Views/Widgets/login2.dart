import 'package:flutter/material.dart';
import 'package:online_maintenance_service/Core/Constants/colors.dart';
import 'package:online_maintenance_service/Views/Auth/login_screen.dart';

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: h * .05,
            width: w * .07,
            decoration: const BoxDecoration(
                color: kSecondaryColor,
                image: DecorationImage(
                    image: AssetImage('assets/img/fb.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(25))),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: h * .05,
            width: w * .07,
            decoration: const BoxDecoration(
                color: kSecondaryColor,
                image: DecorationImage(
                    image: AssetImage('assets/img/google.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(25))),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          child: Container(
            height: h * .05,
            width: w * .07,
            decoration: const BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: const Icon(
              Icons.mail_outline,
              color: kVeryWhitheColor,
            ),
          ),
        ),
      ],
    );
  }
}
