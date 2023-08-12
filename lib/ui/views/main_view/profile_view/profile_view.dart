import 'package:flutter/material.dart';
import 'package:impty_project/ui/shared/utils.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({
    super.key,
  });

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: screenHeight(6)),
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth(20), vertical: screenHeight(20)),
            child: Center()));
  }
}
