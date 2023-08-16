import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key, required this.imageName, this.width, this.color});
  final String imageName;
  final Color? color;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenWidth(30)),
      child: SvgPicture.asset(
        'assets/images/$imageName.svg',
        color: color,
        // width: width ?? screenWidth(5),
      ),
    );
  }
}
