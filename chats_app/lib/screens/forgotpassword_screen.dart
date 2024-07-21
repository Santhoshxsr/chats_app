import 'package:chats_app/utils/app_colors.dart';
import 'package:chats_app/widgets/round_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/round_gradient_button.dart';

class ForgotpasswordScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    Image.asset(
                      "assets/images/forgot.png",
                      width: media.width * 0.70,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    Text(
                      "Reset Your Password",
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    Text(
                      "Enter your email for verfication mail\nTo reset your password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.grayColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: media.width * 0.15,
                    ),
                    RoundTextField(
                      textEditingController: _emailController,
                      hintText: "Email",
                      icon: "assets/icons/message_icon.png",
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: media.width * 0.15,
                    ),
                    RoundGradientButton(
                        onPressed: () {}, title: "Reset password"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
