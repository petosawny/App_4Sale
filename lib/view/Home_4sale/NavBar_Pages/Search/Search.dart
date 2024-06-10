import 'package:code/Component/CustomElevatedButton_Category%20list.dart';
import 'package:code/Component/HomeCommercialCards.dart';
import 'package:code/Constants.dart';
import 'package:code/Utilities/User_Cards.dart';
import 'package:code/view/Home_4sale/NavBar_Pages/Search/Branch_pages/Spotlightl_Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../search_page_branching.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: .5,
        backgroundColor: Colors.white,
        title: Container(
          width: double.infinity,
          height: 49,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
          ),
          child: GestureDetector(
            onTap: () {
              //   Navigator.push(context, CupertinoPageRoute(builder: (context) => Search_page()),);
              Get.to(Search_page());
            },
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
        ),
      )  ,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First row Title
            Padding(
              padding: const EdgeInsets.only(left: 15 , right: 15,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pinned Ads",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.to(() => ShowAllPage());
                        },
                        child: Text(
                          "Show All",
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.indigo,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*.35,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AddUserCards(),
                    AddUserCards(),
                    AddUserCards(),
                    AddUserCards(),
                    AddUserCards(),
                    AddUserCards(),

                  ],
                ),
              ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Trending",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                CustomElevatedButton(departmentName: 'معهد جديد', nextPage: '',
                  ),
                CustomElevatedButton(departmentName: 'معهد جديد', nextPage: '',
                  ), 
                CustomElevatedButton(departmentName: 'معهد جديد', nextPage: '',
                  ),

              ],
            ),
            Row(
              children: [
                CustomElevatedButton(departmentName: 'معهد جديد', nextPage: '',
                  ),
                CustomElevatedButton(departmentName: 'معهد جديد', nextPage: '',
                  ),
                CustomElevatedButton(departmentName: 'معهد جديد', nextPage: '',
                  ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

