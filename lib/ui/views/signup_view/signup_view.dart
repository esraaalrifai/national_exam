import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_button.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_formfield.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_radiobutton.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_image.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_icon.dart';
import 'package:flutter_templete/ui/shared/utils.dart';
import 'package:flutter_templete/ui/views/login_view/login.dart';
import 'package:flutter_templete/ui/views/signup_view/signup_controller.dart';
import 'package:get/get.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  SignupController signupController = Get.put(SignupController());
  int Value = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: screenHieght(35)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {}, child: CustomIcon(imageName: 'ic_back')),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 110),
                    child: CustomText(
                      fontSize: screenWidth(20),
                      text: 'إنشاء حساب',
                      textColor: AppColors.mainTextsColor,
                    ),
                  ),
                ],
              ),
              CustomImages(imageName: 'img_signup'),
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
                  controller: signupController.emailController,
                  hintText: 'اسم المستخدم',
                ),
              ),
              SizedBox(
                height: screenWidth(34),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(end: screenHieght(2.7)),
                child: CustomText(
                    text: 'رقم موبايل',
                    textColor: AppColors.AppPurpleColor,
                    fontSize: screenWidth(22)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth(25)),
                child: CustomTextFormField(
                  customIcon: CustomIcon(imageName: 'ic_text_field_phone'),
                  hintText: ' رقم الموبايل',
                ),
              ),
              SizedBox(
                height: screenWidth(20),
              ),
              Row(
                children: [
                  Customradiobutton(
                    Value: 1,
                    text: 'كلية الطب ',
                  ),
                  Customradiobutton(
                    Value: 2,
                    text: 'كلية الطب ',
                  ),
                  Customradiobutton(
                    Value: 3,
                    text: 'كلية الطب ',
                  )
                ],
              ),
              Row(
                children: [
                  Customradiobutton(
                    Value: 4,
                    text: 'كلية الطب ',
                  ),
                  Customradiobutton(
                    Value: 5,
                    text: 'كلية الطب ',
                  ),
                  Customradiobutton(
                    Value: 6,
                    text: 'كلية الطب ',
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth(20),
                  vertical: screenWidth(25),
                ),
                child: CustomButton(
                  text: 'إنشاء حساب ',
                  onPressed: () {
                    // Get.off(MainView());
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      text: 'هل لديك حساب ؟',
                      textColor: AppColors.mainTextsColor,
                      fontSize: screenWidth(25)),
                  CustomText(
                    text: 'تسجيل الدخول ',
                    textColor: AppColors.AppPurpleColor,
                    fontSize: screenWidth(25),
                    onPressed: () {
                      Get.off(LoginView());
                    },
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
