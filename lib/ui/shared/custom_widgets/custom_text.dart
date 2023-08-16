import 'package:flutter/material.dart';
import 'package:flutter_templete/ui/shared/utils.dart';
import '../colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    this.textColor,
    this.fontSize,
    this.bold = false,
    required this.text,
    this.onPressed,
    this.textDecoration,
    this.isSelected,
    this.textAlign,
  });
  final Color? textColor;
  final double? fontSize;
  final bool? bold;
  final String text;
  final void Function()? onPressed;
  final TextDecoration? textDecoration;
  final bool? isSelected;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
          textAlign: textAlign ?? TextAlign.start,
          text,
          style: TextStyle(
            decoration: textDecoration,
            decorationThickness: 4,
            fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
            fontSize: fontSize ?? screenWidth(20),
            color: textColor ?? AppColors.AppTextColor,
          )),
    );
  }
}
// Big Text size fontSize: size.width * 0.1,
// Small text size fontSize: size.width * 0.04,