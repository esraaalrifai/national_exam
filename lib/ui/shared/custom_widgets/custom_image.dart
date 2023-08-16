import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class CustomImages extends StatelessWidget {
  const CustomImages({super.key, required this.imageName, this.color});
  final String imageName;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'assets/images/$imageName.svg',
        width: screenWidth(1.9),
        color: color,
      ),
    );
  }
}
