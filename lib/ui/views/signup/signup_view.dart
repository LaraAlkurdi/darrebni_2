import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_icon.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_images.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_radiobutton.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/signup/signup_controller.dart';
import 'package:impty_project/ui/views/splash_screen/splash_screen_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  SignupController signupController = Get.put(SignupController());
  int value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: screenHeight(20)),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {}, child: CustomIcon(imageName: 'ic_back (1)')),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 110),
                  child: CustomText(
                      text: 'إنشاء حساب',
                      textColor: AppColors.mainTextsColor,
                      textsize: screenWidth(20)),
                ),
              ],
            ),
            CustomImages(imageName: 'signup (1)'),
            SizedBox(
              height: screenWidth(27),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(end: screenHeight(3)),
              child: CustomText(
                  text: 'اسم المستخدم',
                  textColor: AppColors.mainPurpleColor,
                  textsize: screenWidth(22)),
            ),
            CustomTextField(
              prifexIcon: Icons.person_2_outlined,
              hintext: 'اسم المستخدم',
            ),
            SizedBox(
              height: screenWidth(34),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(end: screenHeight(2.7)),
              child: CustomText(
                  text: 'رقم موبايل',
                  textColor: AppColors.mainPurpleColor,
                  textsize: screenWidth(22)),
            ),
            CustomTextField(
              prifexIcon: Icons.phone_outlined,
              hintext: ' رقم الموبايل',
            ),
            SizedBox(
              height: screenWidth(20),
            ),
            Row(
              children: [
                Customradiobutton(
                  text: 'كلية الطب ',
                ),
                Customradiobutton(
                  text: 'كلية الطب ',
                ),
                Customradiobutton(
                  text: 'كلية الطب ',
                )
              ],
            ),
            Row(
              children: [
                Customradiobutton(
                  text: 'كلية الطب ',
                ),
                Customradiobutton(
                  text: 'كلية الطب ',
                ),
                Customradiobutton(
                  text: 'كلية الطب ',
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
