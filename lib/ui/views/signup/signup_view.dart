import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_icon.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_images.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_radiobutton.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/main_view/main_view.dart';
import 'package:impty_project/ui/views/signup/signup_controller.dart';
import 'package:impty_project/ui/views/splash_screen/splash_screen_view.dart';

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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth(25)),
              child: CustomTextField(
                prifexIcon: Icons.person_2_outlined,
                hintext: 'اسم المستخدم',
                controller: signupController.emailController,
              ),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth(25)),
              child: CustomTextField(
                prifexIcon: Icons.phone_outlined,
                hintext: ' رقم الموبايل',
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
                  Get.off(MainView());
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: 'هل لديك حساب ؟',
                    textColor: AppColors.mainTextsColor,
                    textsize: screenWidth(25)),
                CustomText(
                  text: 'تسجيل الدخول ',
                  textColor: AppColors.mainPurpleColor,
                  textsize: screenWidth(25),
                  onPressed: () {},
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
