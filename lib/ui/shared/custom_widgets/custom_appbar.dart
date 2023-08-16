import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.imageName,
    required this.Title,
  });
  final String imageName;
  final String Title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomClipPath(),
          child: Container(
            color: AppColors.AppPurpleColor,
            height: screenWidth(4),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth(20), vertical: screenWidth(20)),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/images/$imageName.svg',
                width: screenWidth(11),
                color: AppColors.mainWhiteColor,
              ),
              SizedBox(
                width: screenWidth(25),
              ),
              CustomText(
                text: Title,
                textColor: AppColors.mainWhiteColor,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(screenWidth(1), screenHieght(12));
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = screenWidth(10);
    double height = screenHieght(10);
    final path = Path();

    path.moveTo(0, size.height * 0.9956692);
    path.cubicTo(
        size.width * 0.1023160,
        size.height * 0.6877908,
        size.width * 0.3315976,
        size.height * 0.7502392,
        size.width * 0.4827741,
        size.height * 0.7914154);
    path.cubicTo(
        size.width * 0.4872235,
        size.height * 0.7926231,
        size.width * 0.4916071,
        size.height * 0.7938231,
        size.width * 0.4959153,
        size.height * 0.7949846);
    path.cubicTo(
        size.width * 0.5370965,
        size.height * 0.8061231,
        size.width * 0.5762376,
        size.height * 0.8183692,
        size.width * 0.6133012,
        size.height * 0.8299692);
    path.cubicTo(
        size.width * 0.7922471,
        size.height * 0.8859615,
        size.width * 0.9227176,
        size.height * 0.9267923,
        size.width,
        size.height * 0.7537508);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.9956692);
    path.close();
    return path;
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
    throw UnimplementedError();
  }
}
