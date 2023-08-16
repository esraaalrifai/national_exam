// import 'package:flutter/material.dart';
// import 'package:impty_project/ui/shared/colors.dart';
// import 'package:impty_project/ui/shared/utils.dart';

// class MyRadioListTile<T> extends StatelessWidget {
//   final T value;
//   final T groupValue;
//   final String leading;
//   final Widget? title;
//   final ValueChanged<T?> onChanged;

//   const MyRadioListTile({
//     required this.value,
//     required this.groupValue,
//     required this.onChanged,
//     required this.leading,
//     this.title,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final title = this.title;
//     return InkWell(
//       onTap: () => onChanged(value),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         child: Row(
//           children: [
//             _customRadioButton,
//             SizedBox(width: screenWidth(50)),
//             if (title != null) title,
//           ],
//         ),
//       ),
//     );
//   }

//   Widget get _customRadioButton {
//     final isSelected = value == groupValue;
//     return Container(
//       width: screenWidth(20),
//       height: screenWidth(20),
//       decoration: ShapeDecoration(
//         shape: CircleBorder(
//           side: BorderSide(color: AppColors.mainPurpleColor2),
//         ),
//         color:
//             isSelected ? AppColors.mainPurpleColor : AppColors.mainWhiteColor,

//       ),
//     );
//     child:
//     Text(
//       leading,
//       style: TextStyle(
//         color: isSelected ? Colors.white : Colors.grey[600]!,
//         fontWeight: FontWeight.bold,
//         fontSize: 18,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/utils.dart';
import 'package:flutter_templete/ui/views/signup_view/signup_controller.dart';
import 'package:get/get.dart';

class Customradiobutton extends StatefulWidget {
  Customradiobutton({
    super.key,
    required this.text,
    required this.Value,
  });
  final String text;
  final int Value;
  @override
  State<Customradiobutton> createState() => _CustomradiobuttonState();
}

class _CustomradiobuttonState extends State<Customradiobutton> {
  SignupController signupController = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => Radio(
            value: widget.Value.toString(),
            groupValue: signupController.SelectedValue.value,
            onChanged: (value) {
              signupController.onChangeSelected(value);
            },
            activeColor: AppColors.AppPurpleColor,
            fillColor: MaterialStateProperty.all(AppColors.AppPurpleColor),
          ),
        ),
        CustomText(
          fontSize: screenWidth(25),
          text: widget.text,
          textColor: AppColors.mainTextsColor,
        ),
      ],
    );
  }
}
