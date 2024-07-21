import 'package:chats_app/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  List images = [
    "assets/images/farhan.jpg",
    "assets/images/jasir.jpg",
    "assets/images/joshua.jpg",
    "assets/images/kumar.jpg",
    "assets/images/santhosh.jpg",
    "assets/images/yazir.jpg"
  ];
  List names = ["Farhan", "Jasir", "Joshua", "Kumar", "Santhosh", "Yazir"];
  List type = [
    "Outgoing",
    "Incoming",
    "Incoming",
    "Outgoing",
    "Incoming",
    "Outgoing"
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: media.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Calls",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: AppColors.blackColor),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_ic_call_rounded,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.video_call_rounded,
                            size: 30,
                          ))
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Recent",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black45),
              ),
            ),
            ListView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: AssetImage(
                        images[index],
                      ),
                    ),
                    title: Text(
                      names[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          type[index] == "Incoming"
                              ? CupertinoIcons.phone_fill_arrow_down_left
                              : CupertinoIcons.phone_fill_arrow_up_right,
                          size: 22,
                          color: type[index] == "Incoming"
                              ? AppColors.primaryColor2
                              : Colors.green,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          type[index],
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        )
                      ],
                    ),
                    trailing: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[200], shape: BoxShape.circle),
                      child: Icon(Icons.call_sharp),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
