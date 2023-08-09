import 'package:flutter/material.dart';
import 'package:impty_project/core/enums/bottum_navigation.dart';
import 'package:impty_project/ui/views/main_view/profile_view/profile_view.dart';

class MainView extends StatefulWidget {
  MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  BottomNavigationEnum selected = BottomNavigationEnum.HOME;
  PageController controller = PageController(initialPage: 1);
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
              curve: Curves.ease);
          setState(() {
            selected = selectedEnum;
          });
        },
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        onPageChanged: (pageNumer) {},
        children: [
          NotificationView(),
          HomeView(),
          FavoriteView(),
          ProfileView(),
        ],
      ),
    ));
  }
}
