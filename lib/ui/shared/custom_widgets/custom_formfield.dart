import 'package:flutter/material.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_icon.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.customIcon,
    required this.hintText,
    this.controller,
    this.fillColor,
    this.hintTextColor,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.prefixIcon,
    this.prefixIconColor,
    this.maxHeight,
    this.maxWidth,
  });

  final String hintText;
  final TextEditingController? controller;
  final Color? fillColor;
  final Color? hintTextColor;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final double? maxHeight;
  final double? maxWidth;
  final CustomIcon? customIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onChanged: myValidator,
      controller: controller,
      validator: validator,
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        prefixIcon: customIcon != null ? customIcon : prefixIcon,
        prefixIconColor: prefixIconColor ?? AppColors.AppTextColor,
        contentPadding: EdgeInsets.symmetric(horizontal: screenWidth(20)),
        constraints: BoxConstraints(
          maxHeight: maxHeight ?? screenHieght(13),
          maxWidth: maxWidth ?? screenWidth(1.1),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(screenWidth(50)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(screenWidth(50)),
          borderSide: BorderSide.none,
        ),
        filled: true,
        hintStyle: TextStyle(
          color: hintTextColor ?? AppColors.AppTextColor,
          fontSize: screenWidth(20),
        ),
        hintText: hintText,
        fillColor: fillColor ?? AppColors.AppFormFieldColor,
      ),
      keyboardType: keyboardType ?? TextInputType.text,
    );
  }
}
