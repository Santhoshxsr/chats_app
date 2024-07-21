import 'package:chats_app/screens/personal_data_screen.dart';
import 'package:chats_app/utils/app_colors.dart';
import 'package:chats_app/widgets/round_gradient_button.dart';
import 'package:chats_app/widgets/setting_row.dart';
import 'package:chats_app/widgets/title_subtitle_cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/images/santhosh.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Santhosh Raj",
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Student",
                      style: TextStyle(
                        color: AppColors.grayColor,
                        fontSize: 12,
                      ),
                    )
                  ],
                )),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: AppColors.primaryG,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 2,
                              offset: Offset(0, 2))
                        ]),
                    child: MaterialButton(
                      minWidth: double.maxFinite,
                      height: 50,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PersonalDataScreen()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      textColor: AppColors.primaryColor1,
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: TitleSubtitleCell(title: "45", subtitle: "Friends")),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child:
                        TitleSubtitleCell(title: "50", subtitle: "Followers")),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: TitleSubtitleCell(title: "400", subtitle: "Likes")),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration:
                  BoxDecoration(color: AppColors.whiteColor, boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SettingRow(
                    icon: "assets/icons/p_personal.png",
                    title: "Personal Data",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration:
                  BoxDecoration(color: AppColors.whiteColor, boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Other",
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SettingRow(
                    icon: "assets/icons/p_contact.png",
                    title: "Contacts Us",
                    onPressed: () {},
                  ),
                  SettingRow(
                    icon: "assets/icons/p_privacy.png",
                    title: "Privacy Policy",
                    onPressed: () {},
                  ),
                  SettingRow(
                    icon: "assets/icons/p_setting.png",
                    title: "Settings",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RoundGradientButton(onPressed: () {}, title: "Log out")
          ],
        ),
      ),
    );
  }
}
