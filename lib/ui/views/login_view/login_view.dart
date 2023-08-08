import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_images.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:impty_project/ui/shared/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenWidth(10), horizontal: screenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CustomText(
                  text: 'تسجيل الدخول',
                  textColor: AppColors.mainTextColor,
                  textsize: screenWidth(18)),
            ),
            CustomImages(imageName: 'Login'),
            SizedBox(
              height: screenHeight(30),
            ),
            CustomText(
                text: 'اسم المستخدم',
                textColor: AppColors.mainPurpleColor,
                textsize: screenWidth(20)),
            SizedBox(
              height: screenHeight(90),
            ),
            CustomTextField(
              hintext: 'اسم المستخدم',
              prifexIcon: Icons.person_outline,
            ),
            SizedBox(
              height: screenHeight(90),
            ),
            CustomText(
                text: 'رمز تسجيل الدخول',
                textColor: AppColors.mainPurpleColor,
                textsize: screenWidth(20)),
            SizedBox(
              height: screenHeight(90),
            ),
            CustomTextField(
              hintext: 'رمز تسجيل الدخول',
              prifexIcon: Icons.key,
            ),
            SizedBox(
              height: screenHeight(20),
            ),
            CustomButton(text: 'تسجيل الدخول'),
            SizedBox(
              height: screenHeight(80),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: 'ليس لديك حساب؟',
                    textColor: AppColors.mainTextGreyColor,
                    textsize: screenWidth(24)),
                CustomText(
                    text: 'انشأ حسابك الآن',
                    textColor: AppColors.mainPurpleColor2,
                    textsize: screenWidth(24)),
              ],
            ),
            SizedBox(
              height: screenHeight(16),
            ),
            Center(
              child: CustomText(
                  onPressed: () {},
                  textDecoration: TextDecoration.underline,
                  text: 'المتابعة كزائر',
                  textColor: AppColors.mainTextGreyColor,
                  textsize: screenWidth(24)),
            ),
          ],
        ),
      ),
    );
  }
}
