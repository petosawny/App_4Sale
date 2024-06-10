import 'package:code/Component/CommercialClipRRect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommercialDetailsPage extends StatelessWidget {
   CommercialDetailsPage({

   this.details_image,
});
   String? details_image ;
int? viewsNumber = 90;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey[900],
              child: Column(
                children: [
                  // top of the page
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Text(
                              "Commercial Ad Details",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.save_alt_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.ios_share_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .8,
                    width: MediaQuery.of(context).size.width * .95,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: InkWell(
                        onTap: () {
                          Get.to(() => CommercialDetailsPage());
                        },
                        child: ClipRect(
                          child: Image.asset('assets/icons/bmw.jfif'),
                        ),
                      ),
                    ),
                  ),
                 Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "$viewsNumber",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),  SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Views",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Call Button
                      Container(
                        height:  MediaQuery.of(context).size.height * .06,
                        width:  MediaQuery.of(context).size.width * .45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor: Colors.blue[800],
                          ),
                          onPressed: () {
                            Get.back();
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 25,
                              ),
                              Text(
                                "Call Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),


                      // whats App Button
                      Container(
                        height:  MediaQuery.of(context).size.height * .06,
                        width:  MediaQuery.of(context).size.width * .45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor: Colors.green,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 25,
                              ),
                              Text(
                                "WhatsApp",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.blueGrey[900],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15 , right: 15,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "More Commercial Ads",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text(
                                "Check All",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Column(
                            children: [
                              CommercialClipRRect(commercialImage: 'assets/icons/logo.png',),
                              CommercialClipRRect(commercialImage: 'assets/icons/logo.png',),
                              CommercialClipRRect(commercialImage: 'assets/icons/logo.png',),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Column(

                            children: [
                              CommercialClipRRect(commercialImage: 'assets/icons/logo.png',),
                              CommercialClipRRect(commercialImage: 'assets/icons/logo.png',),
                              CommercialClipRRect(commercialImage: 'assets/icons/logo.png',),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.blueGrey[900],
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: MediaQuery.of(context).size.height * .07,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: Colors.blue[800],
              ),
              onPressed: () {
                Get.back();
              },
              child: Text(
                "Check All Commercial Ads",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
