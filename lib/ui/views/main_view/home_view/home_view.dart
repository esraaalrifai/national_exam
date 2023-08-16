import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_formfield.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_icon.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_image.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.AppWhiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: screenWidth(4)),
        child: Column(children: [
          CustomTextFormField(
            hintText: 'بحث',
            prefixIcon: Icon(Icons.search),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: screenWidth(3),
            ),
            items: [
              SvgPicture.asset(
                'assets/images/img_login.svg',
                width: screenWidth(12),
                height: screenWidth(3),
              ),
              SvgPicture.asset(
                'assets/images/img_signup.svg',
                width: screenWidth(12),
                height: screenWidth(3),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth(30), vertical: screenWidth(20)),
            child: Row(
              children: [
                Container(
                  width: screenWidth(99),
                  height: screenWidth(10),
                  color: AppColors.mainTextsColor,
                ),
                SizedBox(
                  width: screenWidth(20),
                ),
                CustomText(
                    text: 'التصنيفات',
                    textColor: AppColors.mainTextsColor,
                    bold: true),
              ],
            ),
          ),
          SizedBox(
            width: screenWidth(1.1),
            height: screenHieght(20),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth(22)),
                  child: Container(
                    width: screenWidth(8),
                    height: screenWidth(15),
                    decoration: BoxDecoration(
                        color: AppColors.AppWhiteColor,
                        border: Border(
                            bottom: BorderSide(
                          color: isSelected
                              ? AppColors.AppPurpleColor
                              : AppColors.AppWhiteColor,
                          width: screenWidth(90),
                        ))),
                    child: CustomText(
                      onPressed: () {
                        setState(() {
                          isSelected = true;
                        });
                      },
                      text: 'الكل',
                    ),
                  ),
                );
              },
            ),
          ),
          // SizedBox(
          //   width: screenWidth(2),
          //   height: screenWidth(600),
          //   child: Column(
          //     children: [
          //       CustomImages(imageName: 'img_login'),
          //       CustomText(text: 'طب بشري ')
          //     ],
          //   ),
          // ),
        ]),
      ),
    );
  }
}
