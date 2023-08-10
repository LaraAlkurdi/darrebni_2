import 'package:flutter/material.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_images.dart';
import 'package:impty_project/ui/shared/utils.dart';

class PageWithImage extends StatefulWidget {
  final Widget page;

  PageWithImage({required this.page});

  @override
  _PageWithImageState createState() => _PageWithImageState();
}

class _PageWithImageState extends State<PageWithImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImages(
          imageName: 'shapeMaker',
          imageSize: screenHeight(5.47),
        ),

        // Page Content
        Expanded(child: widget.page),
      ],
    );
  }
}
