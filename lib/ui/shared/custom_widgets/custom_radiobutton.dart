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
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/utils.dart';

class Customradiobutton extends StatelessWidget {
  const Customradiobutton({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: 'radio value',
            groupValue: 'group value',
            onChanged: (value) {}),
        CustomText(
            text: '',
            textColor: AppColors.mainTextsColor,
            textsize: screenWidth(20)),
        CustomText(
            text: text,
            textColor: AppColors.mainTextsColor,
            textsize: screenWidth(20))
      ],
    );
  }
}
