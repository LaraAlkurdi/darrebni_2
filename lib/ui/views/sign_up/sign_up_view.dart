import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/sign_up/sign_up_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  SignUpController controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth(20),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomText(
                    text: 'اختر الاختصاص',
                    textColor: AppColors.mainPurpleColor,
                    textsize: screenHeight(50),
                  ),
                ),
                CustomButton(
                  text: 'إنشاء حساب',
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
