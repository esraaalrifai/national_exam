import 'package:flutter/material.dart';
import 'package:flutter_templete/core/enums/bottom_Navigation.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_appbar.dart';
import 'package:flutter_templete/ui/views/main_view/home_view/home_view.dart';
import 'package:flutter_templete/ui/views/main_view/main_view_controller.dart';
import 'package:flutter_templete/ui/views/main_view/main_view_widget/bottom_navigation_widget.dart';
import 'package:flutter_templete/ui/views/main_view/notification_view/notification_view.dart';
import 'package:flutter_templete/ui/views/main_view/profile_view/profile_view.dart';
import 'package:flutter_templete/ui/views/main_view/star_view/star_view.dart';
import 'package:get/get.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  MainViewController mainViewController = Get.put(MainViewController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.AppWhiteColor,

            // bottomNavigationBar: BottomNavigationWidget(
            //   bottomNavigationEnum: selected,
            // onTap: (selectedEnum, pageNumber) {
            //     controller.animateToPage(pageNumber,
            //         duration: Duration(
            //           milliseconds: 500,
            //         ),
            //         curve: Curves.easeInCirc);
            //     setState(() {
            //       selected = selectedEnum;
            //     });
            //   },
            // ),
            body: Obx(
              () => Stack(
                children: [
                  PageView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: mainViewController.controller,
                    onPageChanged: (pageNumber) {},
                    children: [
                      ProfileView(),
                      StarView(),
                      HomeView(
                          //onPressed: (){},
                          //  onMenuTap:  scaffoldKey.currentState.openEndDrawer,
                          ),
                      NotificationView(),
                    ],
                  ),
                  PositionedDirectional(
                      start: 0,
                      top: 0,
                      end: 0,
                      child: CustomAppbar(
                          imageName: 'ic_nav_bar_home', Title: 'الرئيسية')),
                  PositionedDirectional(
                    bottom: 0,
                    end: 0,
                    start: 0,
                    child: BottomNavigationWidget(
                      bottomNavigationEnum: mainViewController.selected.value,
                      onTap: (selectedEnum, pageNumber) {
                        mainViewController.navigateToPage(selectedEnum);
                      },
                    ),
                  )
                ],
              ),
            )));
  }
}
