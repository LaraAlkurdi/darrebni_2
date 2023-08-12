import 'package:flutter/material.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/utils.dart';

import '../../../shared/custom_widgets/custom_images.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: screenHeight(4.6)),
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth(20), vertical: screenWidth(20)),
            child: Column(
              children: [],
            )));
  }
}
