import 'package:chats_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class PersonalDataScreen extends StatefulWidget {
  const PersonalDataScreen({super.key});

  @override
  State<PersonalDataScreen> createState() => _PersonalDataScreenState();
}

class _PersonalDataScreenState extends State<PersonalDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Personal Data"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/santhosh.jpg"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 35,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/profile_icon.png",
                      height: 18,
                      width: 18,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Dear ",
                      style:
                          TextStyle(color: AppColors.blackColor, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/profile_icon.png",
                      height: 18,
                      width: 18,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Santhosh",
                      style:
                          TextStyle(color: AppColors.blackColor, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/profile_icon.png",
                      height: 18,
                      width: 18,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Raj ",
                      style:
                          TextStyle(color: AppColors.blackColor, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/message_icon.png",
                      height: 18,
                      width: 18,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "santhoshraj03112003@gmail.com ",
                      style:
                          TextStyle(color: AppColors.blackColor, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/gender_icon.png",
                      height: 18,
                      width: 18,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Male ",
                      style:
                          TextStyle(color: AppColors.blackColor, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/calendar_icon.png",
                      height: 18,
                      width: 18,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "03/11/2003",
                      style:
                          TextStyle(color: AppColors.blackColor, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: AppColors.secondaryG,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: double.maxFinite,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      textColor: AppColors.primaryColor1,
                      child: Text(
                        "Change Password",
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: AppColors.primaryG,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: double.maxFinite,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      textColor: AppColors.primaryColor1,
                      child: Text(
                        "Edit Personal Data",
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
