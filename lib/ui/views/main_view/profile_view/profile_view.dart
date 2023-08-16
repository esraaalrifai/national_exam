import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_image.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_profile.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.AppWhiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: screenWidth(4)),
        child: Column(
          children: [
            Container(
              height: screenHieght(6.5),
              width: screenWidth(3.1),
              decoration: BoxDecoration(
                border: Border.all(
                    color: AppColors.mainBlueColor, width: screenWidth(150)),
                borderRadius: BorderRadius.circular(100),
              ),
              child: CustomImages(
                imageName: 'user2',
                color: AppColors.AppBlueColor,
              ),
            ),
            CustomProfile(
              text: 'المعلومات الشخصية ',
              color: AppColors.AppPurple2Color,
              textcolor: AppColors.AppPurple2Color,
              iconName: 'ic_edit',
              iconcolor: AppColors.AppPurpleColor,
            ),
            CustomProfile(
              text: 'إرسال الشكاوي  ',
              color: AppColors.AppPurple2Color,
              textcolor: AppColors.AppPurple2Color,
              iconName: 'ic_send_feedback',
              iconcolor: AppColors.AppPurpleColor,
            ),
            CustomProfile(
              text: ' عن التطبيق  ',
              color: AppColors.AppPurple2Color,
              textcolor: AppColors.AppPurple2Color,
              iconName: 'ic_edit',
              iconcolor: AppColors.AppPurpleColor,
            )
          ],
        ),
      ),
    );
  }
}
