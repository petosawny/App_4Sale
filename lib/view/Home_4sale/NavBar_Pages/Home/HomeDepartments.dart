import 'package:code/Constants.dart';
import 'package:code/Utilities/User_Cards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../search_page_branching.dart';
import 'branches_pages/SpecificProduct.dart';

class HomeDepartmentsScreen extends StatelessWidget {

  String? picLink;

  String? PproductName = "cars";

  HomeDepartmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        backgroundColor: Colors.white,
        title: InkWell(
          onTap: () {
            Get.to(const Search_page());
          },
          child: Container(
            width: double.infinity,
            height: 49,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: const TextField(
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: ListView(
          children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                      child: GridView.builder(
                        itemCount: 5,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: (){
                              Get.to(SpecificProduct(title_productName: "$PproductName",));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    // borderRadius: null,
                                    child: // Image.Network("") ,
                                        Image.asset(
                                      "assets/icons/bm.jfif",
                                      height: MediaQuery.of(context).size.height * .09,
                                    ),
                                  ),
                                  Text(
                                    "$PproductName",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                  ),
                ),

            Card(
              elevation: 0,
              color: bgColor,
              child: Container(
                height: 130,
                width: 130,
              ),
            ),
            // First Title
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Commercial Ads",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),

            // Cards Slider
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: MediaQuery.of(context).size.height * .35,
                width: MediaQuery.of(context).size.width * .45,
                color: bgColor,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    // HomeCommercialCard(),
                    // HomeCommercialCard(),
                    // HomeCommercialCard(),
                    // HomeCommercialCard(),
                  ],
                ),
              ),
            ),
            // the first button
            Padding(
              padding: const EdgeInsets.all(5),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: const BorderSide(width: 2, color: Colors.blue),
                ),
                child: const Text(
                  'See All Commercial Ads',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            // Second Title
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "All in Automotive ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Top User Ads",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Top Commercial Ads",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[350],
              thickness: 3.5,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 200,
                height: 300,
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
            ),
            // #######################################################
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "All in Automotive ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Top User Ads",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Top Commercial Ads",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[350],
              thickness: 3.5,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 200,
                height: 300,
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
            ),
          ],
        ),
      ),
    );
  }
}
