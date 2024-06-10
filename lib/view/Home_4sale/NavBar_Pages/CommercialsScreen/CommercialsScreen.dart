import 'package:code/Component/CustomElevatedButton_Category list.dart';
import 'package:code/controller/ChangeTabsController.dart';
import 'package:code/view/Home_4sale/NavBar_Pages/CommercialsScreen/AppBarListPages/AllPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommercialsScreen extends StatelessWidget {
  final ChangeTabsController changeTabsController =
  Get.put(ChangeTabsController(), permanent: false);

  CommercialsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: "Search for anything",
                border: InputBorder.none,
              ),
            ),
          ),
          centerTitle: true,
          bottom:PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomElevatedButton(departmentName: 'All', nextPage: "/" ,),
                  CustomElevatedButton(departmentName: 'Property', nextPage: "/e" ,),
                  CustomElevatedButton(departmentName: 'Card Rental', nextPage: "/e" ,),
                  CustomElevatedButton(departmentName: 'Peter', nextPage: "/e" ,),
                  CustomElevatedButton(departmentName: 'Electronics', nextPage: "/e" ,),

                ],
              ),

            ),
          ),

        ),


      ),
body: AllPage(),
      // body: Obx(() => IndexedStack(
      //   index: changeTabsController.tabIndex.value,
      //   children: [
      //     HomeDepartmentsScreen(),
      //     CommercialsScreen(),
      //     Post_an_AdScreen(),
      //     SearchScreen(),
      //     Account(),
      //   ],
      // )),
    );
  }
}
