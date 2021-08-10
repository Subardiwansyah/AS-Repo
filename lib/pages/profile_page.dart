import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dating_app/commons/Opaque_image.dart';
import 'package:flutter_dating_app/commons/my_info.dart';
import 'package:flutter_dating_app/commons/profile_info_big_card.dart';
import 'package:flutter_dating_app/commons/profile_info_card.dart';
import 'package:flutter_dating_app/pages/super_like_me_page.dart';
import 'package:flutter_dating_app/styleguide/color.dart';
import 'package:flutter_dating_app/styleguide/text_style.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Stack(
                  children: <Widget>[
                    OpaqueImage(
                      imageUrl: "assets/images/anne.jpeg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "My Profile",
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "13",
                            secondText: "New mathes",
                            icon: Icon(
                              Icons.star,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                            firstText: "21",
                            secondText: "Umacted me",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              color: blueColor,
                              width: 32,
                            ),
                          ),
                        ]
                      ),
                      TableRow(
                          children: [
                            ProfileInfoBigCard(
                              firstText: "264",
                              secondText: "All mathes",
                              icon: Image.asset(
                                "assets/icons/checklist.png",
                                width: 32,
                                color: blueColor,
                              ),
                            ),
                            ProfileInfoBigCard(
                              firstText: "42",
                              secondText: "Rematched",
                              icon: Icon(
                                Icons.refresh,
                                color: blueColor,
                                size: 32,
                              ),
                            ),
                          ]
                      ),
                      TableRow(
                          children: [
                            ProfileInfoBigCard(
                              firstText: "404",
                              secondText: "Profile visitors",
                              icon: Icon(
                                Icons.remove_red_eye,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SuperLikeMePage()));
                              },
                              child: ProfileInfoBigCard(
                                firstText: "42",
                                secondText: "Super likes",
                                icon: Icon(
                                  Icons.favorite,
                                  color: blueColor,
                                  size: 32,
                                ),
                              ),
                            ),
                          ]
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight * (4/9) - 80/2,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ProfileInfoCard(
                    firstText: "54%",
                    secondText: "Progress",
                  ),
                  SizedBox(width: 10,),
                  ProfileInfoCard(
                    hasImage: true,
                    imagePath: "assets/icons/pulse.png",
                  ),
                  SizedBox(width: 10,),
                  ProfileInfoCard(
                    firstText: "152",
                    secondText: "Level",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
