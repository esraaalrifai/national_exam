import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_button.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_formfield.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_image.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_icon.dart';
import 'package:flutter_templete/ui/shared/utils.dart';
import 'package:flutter_templete/ui/views/main_view/main_view.dart';
import 'package:flutter_templete/ui/views/signup_view/signup_view.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: screenHieght(35)),
            child: Column(children: [
              CustomText(
                fontSize: screenWidth(20),
                text: ' تسجيل الدخول',
                textColor: AppColors.mainTextsColor,
              ),
              CustomImages(imageName: 'img_login'),
              SizedBox(
                height: screenWidth(27),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(end: screenHieght(3)),
                child: CustomText(
                    text: 'اسم المستخدم',
                    textColor: AppColors.AppPurpleColor,
                    fontSize: screenWidth(22)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth(25)),
                child: CustomTextFormField(
                  customIcon: CustomIcon(imageName: 'ic_text_field_user'),
                  hintText: 'اسم المستخدم',
                ),
              ),
              SizedBox(
                height: screenWidth(34),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(end: screenHieght(2.7)),
                child: CustomText(
                    text: 'رمز الدخول',
                    textColor: AppColors.AppPurpleColor,
                    fontSize: screenWidth(22)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth(25)),
                child: CustomTextFormField(
                  customIcon: CustomIcon(imageName: 'ic_text_field_code'),
                  hintText: ' رمز الدخول',
                ),
              ),
              SizedBox(
                height: screenWidth(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth(20),
                  vertical: screenWidth(25),
                ),
                child: CustomButton(
                  text: 'تسجيل الدخول ',
                  onPressed: () {
                    Get.off(MainView());
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      text: 'ليس لديك حساب ؟',
                      textColor: AppColors.mainTextsColor,
                      fontSize: screenWidth(25)),
                  CustomText(
                    text: 'أنشـأ حسابك الان ',
                    textColor: AppColors.AppPurpleColor,
                    fontSize: screenWidth(25),
                    onPressed: () {
                      Get.off(SignupView());
                    },
                  )
                ],
              ),
              SizedBox(
                height: screenWidth(5),
              ),
              CustomText(
                textDecoration: TextDecoration.underline,
                text: 'المتابعة كزائر',
                textColor: AppColors.AppPurpleColor,
                fontSize: screenWidth(25),
                onPressed: () {},
              )
            ]),
          ),
        ),
      ),
    );
  }
}
