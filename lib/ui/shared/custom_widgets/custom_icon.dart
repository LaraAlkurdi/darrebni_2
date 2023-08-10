import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impty_project/ui/shared/utils.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.imageName, this.colorIcon});
  final String imageName;
  final Color? colorIcon;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'assets/images/$imageName.svg',
        color: colorIcon,
        width: screenWidth(18),
      ),
    );
  }
}
