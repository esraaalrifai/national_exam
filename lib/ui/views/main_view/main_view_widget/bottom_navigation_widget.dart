import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/core/enums/bottom_Navigation.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_appbar.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class BottomNavigationWidget extends StatefulWidget {
  final BottomNavigationEnum bottomNavigationEnum;
  final Function(BottomNavigationEnum, int) onTap;

  const BottomNavigationWidget({
    Key? key,
    required this.bottomNavigationEnum,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidget();
}

class _BottomNavigationWidget extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth(15),
        vertical: screenWidth(20),
      ),
      child: Container(
        color: AppColors.AppWhiteColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navItem(
              imageName: 'ic_nav_bar_profile',
              isSelected:
                  widget.bottomNavigationEnum == BottomNavigationEnum.PROFILE,
              onTap: () {
                widget.onTap(
                  // bottomNavigationEnum:
                  BottomNavigationEnum.PROFILE,
                  //pageNumber:
                  0,
                );
              },
            ),
            navItem(
              imageName: 'ic_nav_bar_important_questions',
              isSelected:
                  widget.bottomNavigationEnum == BottomNavigationEnum.STAR,
              onTap: () {
                widget.onTap(
                  BottomNavigationEnum.STAR,
                  1,
                );
              },
            ),
            navItem(
              imageName: 'ic_nav_bar_home',
              isSelected:
                  widget.bottomNavigationEnum == BottomNavigationEnum.HOME,
              onTap: () {
                widget.onTap(
                  BottomNavigationEnum.HOME,
                  2,
                );
              },
            ),
            navItem(
              imageName: 'ic_nav_bar_notifications',
              isSelected: widget.bottomNavigationEnum ==
                  BottomNavigationEnum.NOTIFICATION,
              onTap: () {
                widget.onTap(
                  BottomNavigationEnum.NOTIFICATION,
                  3,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget navItem({
    required String imageName,
    required bool isSelected,
    required Function()? onTap,
    double? size,
  }) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/images/$imageName.svg',
            width: screenWidth(18),
            color: AppColors.AppPurpleColor,
          ),
          SizedBox(
            height: screenHieght(90),
          ),
          if (isSelected)
            Container(
              width: screenWidth(8),
              height: screenHieght(250),
              color: AppColors.AppPurpleColor,
            ),
        ],
      ),
      // Container(
      //   width: screenWidth(8),
      //   height: screenWidth(15),
      //   decoration: BoxDecoration(
      //       color: AppColors.AppWhiteColor,
      //       border: Border(
      //           bottom: BorderSide(
      //         color: isSelected
      //             ? AppColors.AppPurpleColor
      //             : AppColors.AppWhiteColor,
      //         width: screenWidth(90),
      //       ))),
      //   child: SvgPicture.asset(
      //     'assets/images/$imageName.svg',
      //     color: AppColors.AppPurpleColor,
      //     width: size ?? screenWidth(20),
      //   ),
      // ),
    );
  }
}
