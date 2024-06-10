import 'package:code/controller/ChangeTabsController.dart';
import 'package:code/view/Home_4sale/NavBar_Pages/CommercialsScreen/CommercialsScreen.dart';
import 'package:code/view/Home_4sale/NavBar_Pages/Home/HomeDepartments.dart';
import 'package:code/view/Home_4sale/NavBar_Pages/Post%20an%20Ad.dart';
import 'package:code/view/Home_4sale/NavBar_Pages/Account/Account.dart';
import 'package:code/view/Home_4sale/NavBar_Pages/Search/Search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/Login_Page.dart';

class LayoutScreen extends StatelessWidget {
  LayoutScreen({Key? key}) : super(key: key);
  final TextStyle unselectedLabelStyle =
      TextStyle(color: Colors.grey, fontSize: 15);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontSize: 15);

  buildBottomNavigationMenu(context, BottomNavBarController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
        child: SizedBox(
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: BottomNavBarController.changeTabIndex,
            currentIndex: BottomNavBarController.tabIndex.value,
            backgroundColor: Colors.transparent,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.blue,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.woo_commerce_rounded,
                ),
                label: 'Commercials',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                ),
                label: 'Post Ad',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_pin,
                ),
                label: 'Account',
              ),
            ],
          ),
        )));
  }
  @override
  Widget build(BuildContext context) {
    final ChangeTabsController bottomNavBarController =
        Get.put(ChangeTabsController(), permanent: false);
    return Scaffold(
      backgroundColor: Colors.grey[200],

      bottomNavigationBar:
          buildBottomNavigationMenu(context, bottomNavBarController),
      body: Obx(() => IndexedStack(
            index: bottomNavBarController.tabIndex.value,
            children: [
              HomeDepartmentsScreen(),
              CommercialsScreen(),
              LoginPage(),
              SearchScreen(),
              Account(),
            ],
          )),
    );
  }
}
