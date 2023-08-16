import 'package:flutter/material.dart';
import 'package:flutter_templete/core/enums/bottom_Navigation.dart';
import 'package:flutter_templete/core/services/base_controller.dart';
import 'package:get/get.dart';

class MainViewController extends BaseController {
  final selected = BottomNavigationEnum.HOME.obs;
  final controller = PageController(initialPage: 2);

  void navigateToPage(BottomNavigationEnum page) {
    final pageNumber = _getPageNumber(page);
    controller.animateToPage(
      pageNumber,
      duration: Duration(microseconds: 500),
      curve: Curves.easeInCirc,
    );
    selected.value = page;
  }

  int _getPageNumber(BottomNavigationEnum page) {
    switch (page) {
      case BottomNavigationEnum.PROFILE:
        return 0;
      case BottomNavigationEnum.STAR:
        return 1;
      case BottomNavigationEnum.HOME:
        return 2;
      case BottomNavigationEnum.NOTIFICATION:
        return 3;
      default:
        return 2; // Default page is HomeView
    }
  }
}
