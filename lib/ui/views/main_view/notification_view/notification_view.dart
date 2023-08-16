import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_button.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_image.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenWidth(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImages(imageName: 'img_feedback'),
          SizedBox(height: screenWidth(25)),
          CustomText(
            text: 'الإشعارات ',
            fontSize: screenWidth(14),
            textColor: AppColors.mainTextsColor,
          ),
          CustomText(
            text:
                'ابقى على إطلاع بمواعيد الإمتحان الوطني \nوصدور النتائج ,إضافة أسئلة والكثير من \nالأخبار ',
            textColor: AppColors.mainTextsColor,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: screenWidth(10),
          ),
          CustomButton(text: 'تفعيل الإشعارات ', onPressed: () {}),
          CustomText(
            text: 'تجاهل ',
            textColor: AppColors.mainTextsColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
