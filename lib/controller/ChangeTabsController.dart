
import 'package:code/Component/CustomElevatedButton_Category%20list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeTabsController extends GetxController{

 var tabIndex =0.obs ;


 void changeTabIndex ( int index){
   tabIndex.value  = index ;

 }

 @override
  void onInit() {
   super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

buildListCategoryMenu(context, changeTabsController) {
 return Obx(() => MediaQuery(
     data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
     child: SizedBox(
      child:ListView(
       scrollDirection: Axis.horizontal,
       children: [
        CustomElevatedButton(departmentName: 'All', nextPage: "/" ,),
        CustomElevatedButton(departmentName: 'Property', nextPage: "/e" ,),
        CustomElevatedButton(departmentName: 'Card Rental', nextPage: "/e" ,),
        CustomElevatedButton(departmentName: 'Peter', nextPage: "/e" ,),
        CustomElevatedButton(departmentName: 'Electronics', nextPage: "/e" ,),

       ],
      ),
      //  BottomNavigationBar(
      //  showUnselectedLabels: true,
      //  showSelectedLabels: true,
      //  onTap: BottomNavBarController.changeTabIndex,
      //  currentIndex: BottomNavBarController.tabIndex.value,
      //  backgroundColor: Colors.transparent,
      //  unselectedItemColor: Colors.grey,
      //  selectedItemColor: Colors.blue,
      //  unselectedLabelStyle: unselectedLabelStyle,
      //  selectedLabelStyle: selectedLabelStyle,
      //  items: [
      //   BottomNavigationBarItem(
      //    icon: Icon(
      //     Icons.home_outlined,
      //    ),
      //    label: 'Home',
      //   ),
      //   BottomNavigationBarItem(
      //    icon: Icon(
      //     Icons.woo_commerce_rounded,
      //    ),
      //    label: 'Commercials',
      //   ),
      //   BottomNavigationBarItem(
      //    icon: Icon(
      //     Icons.add_box_outlined,
      //    ),
      //    label: 'Post Ad',
      //   ),
      //   BottomNavigationBarItem(
      //    icon: Icon(
      //     Icons.search,
      //    ),
      //    label: 'Search',
      //   ),
      //   BottomNavigationBarItem(
      //    icon: Icon(
      //     Icons.person_pin,
      //    ),
      //    label: 'Account',
      //   ),
      //  ],
      // ),
     )));
}


