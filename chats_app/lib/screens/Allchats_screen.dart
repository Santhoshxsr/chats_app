import 'package:chats_app/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/round_text_field.dart';
import 'chat_screen.dart';

class AllchatsScreen extends StatelessWidget {
  List images = [
    "assets/images/farhan.jpg",
    "assets/images/jasir.jpg",
    "assets/images/joshua.jpg",
    "assets/images/kumar.jpg",
    "assets/images/santhosh.jpg",
    "assets/images/yazir.jpg"
  ];
  List names = ["Farhan", "Jasir", "Joshua", "Kumar", "Santhosh", "Yazir"];
  List msgTiming = [
    "Mon",
    "12:30",
    "sun",
    "05:41",
    "22:12",
    "Wed",
  ];
  List msgs = [
    "Hi,how are you?",
    " let meet tomorrow",
    "Good Night Bro",
    "Bro, I need your help",
    "It is nice to meet you",
    "Good Morning",
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
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chats",
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
                            CupertinoIcons.pen,
                            size: 30,
                          )),
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
            SizedBox(
              height: media.width * 0.05,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
            SizedBox(
              height: media.width * 0.04,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(right: 25),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  images[index],
                                ),
                                minRadius: 33,
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(2.5),
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2.5,
                                        )),
                                    child: Icon(
                                      Icons.brightness_1,
                                      size: 10,
                                      color: Colors.green,
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            names[index],
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: media.width * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 1,
              ),
            ),
            SizedBox(
              height: media.width * 0.04,
            ),
            ListView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ));
                    },
                    leading: CircleAvatar(
                      maxRadius: 28,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Text(
                      names[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      msgs[index],
                      style: TextStyle(color: AppColors.blackColor),
                    ),
                    trailing: Text(msgTiming[index]),
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
