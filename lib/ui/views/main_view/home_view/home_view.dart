import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:impty_project/ui/shared/utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/shapeMaker.svg',
            height: screenHeight(5.47),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: screenWidth(2.9), horizontal: screenWidth(20)),
            child: CustomTextField(
              hintext: "بحث",
              prifexIcon: Icons.search,
            ),
          )
        ],
      ),
    );
  }
}
