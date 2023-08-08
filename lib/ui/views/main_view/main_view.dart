import 'package:flutter/material.dart';
import 'package:impty_project/core/enums/bottum_navigation.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/main_view/home_view/home_view.dart';
import 'package:impty_project/ui/views/main_view/main_view_widgets/bottom_navigation_widget.dart';

class MainView extends StatefulWidget {
  MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  BottomNavigationEnum selected = BottomNavigationEnum.HOME;
  PageController controller = PageController(
      initialPage: 2); //مسؤو عن تحريك الصفحة ووين بدي يااقلع يعني 2
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      // backgroundColor: AppColors.mainBlackColor,
      bottomNavigationBar: BottomNavigationWidget(
        bottomNavigationEnum: selected,
        onTap: (selectedEnum, pageNumber) {
          // scaffoldKey.currentState!.openEndDrawer();

          controller.animateToPage(pageNumber,
              duration: Duration(
                milliseconds: 500,
              ),
              curve: Curves.easeInCirc);
          setState(() {
            selected = selectedEnum;
          });
        },
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(), //عشان مايتحرك بالسحب
        controller: controller, //للانتقال من صفحة لاخرى
        onPageChanged: (pageNumer) {},
        children: [HomeView()],
      ),
    ));
  }
}
