import 'package:chats_app/utils/app_colors.dart';
import 'package:chats_app/widgets/round_gradient_button.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/welcome_promo.png",
              width: media.width * 0.80,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 28),
            ),
            SizedBox(
              height: media.width * 0.03,
            ),
            Text(
              "You are all set now, let's chat with\nyour loved ones",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.grayColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            SizedBox(
              height: media.width * 0.15
            ),
            RoundGradientButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginScreen(),));
            }, title:"Get Started")
          ],
        ),
      )),
    );
  }
}
