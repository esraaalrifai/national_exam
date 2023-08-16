import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_icon.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({
    super.key,
    this.color,
    required this.text,
    this.textcolor,
    this.bold,
    required this.iconName,
    this.iconcolor,
  });
  final Color? color;
  final Color? textcolor;
  final String text;
  final bool? bold;
  final String iconName;
  final Color? iconcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth(30), vertical: screenWidth(20)),
      child: Row(
        children: [
          Container(
            width: screenWidth(99),
            height: screenWidth(10),
            color: color ?? AppColors.mainTextsColor,
          ),
          SizedBox(
            width: screenWidth(20),
          ),
          CustomText(
              text: text,
              textColor: textcolor ?? AppColors.mainTextsColor,
              bold: bold),
          SizedBox(
            width: screenWidth(2.5),
          ),
          CustomIcon(
            imageName: iconName,
            color: iconcolor,
          )
        ],
      ),
    );
  }
}
