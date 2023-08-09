import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(child: SvgPicture.asset('ic_profile.svg')),
        ],
      ),
    );
  }
}
