import 'package:flutter/material.dart';
import 'package:flutter_dating_app/commons/two_line_item.dart';
import 'package:flutter_dating_app/styleguide/color.dart';

class ProfileInfoCard extends StatelessWidget {

  final firstText, secondText, hasImage, imagePath;

  const ProfileInfoCard({
    Key key,
    @required this.firstText,
    @required this.secondText,
    this.hasImage = false,
    this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
        child: hasImage
            ?  Image.asset(
          imagePath,
          color: primaryColor,
          height: 25,
          width: 25,
        ) : TwoLineItem(
          firstText: firstText,
          secondText: secondText,
        ),
    );
  }
}
