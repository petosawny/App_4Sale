import 'package:code/Component/Specifications_Container.dart';
import 'package:code/Customs_Widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AutomotiveCardPAge extends StatelessWidget {
  const AutomotiveCardPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomingText(
          text: '',
          size: 20,
          weight: FontWeight.w300,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          // right signs
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.ios_share_rounded,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      'assets/icons/bmw.jfif',
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.visibility),
                      Text("data"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("data"),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.timer),
                      SizedBox(
                        width: 10,
                      ),
                      Text("data"),
                    ],
                  ),
                  CustomingText(
                      text: "text",
                      color: Colors.black,
                      size: 20,
                      weight: FontWeight.w300),
                  CustomingText(
                      text: "text",
                      color: Colors.black,
                      size: 20,
                      weight: FontWeight.w300),
                  Row(
                    children: [
                      Icon(Icons.location_on_rounded),
                      Text("data"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CustomingText(
                        text: "Specifications",
                        color: Colors.black,
                        size: 35,
                        weight: FontWeight.w300),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Specifications_Container(data: "2000"),
                        SizedBox(
                          width: 30,
                        ),
                        Specifications_Container(data: "peter"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Specifications_Container(data: "2000"),
                        SizedBox(
                          width: 30,
                        ),
                        Specifications_Container(data: "peter"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Specifications_Container(data: "2000"),
                        SizedBox(
                          width: 30,
                        ),
                        Specifications_Container(data: "peter"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Specifications_Container(data: "2000"),
                        SizedBox(
                          width: 30,
                        ),
                        Specifications_Container(data: "peter"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                color: Colors.white,
                child: Column(
                  children: [
                    CustomingText(
                        text: "Aditional Data",
                        color: Colors.black,
                        size: 30,
                        weight: FontWeight.bold),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("full option"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("full option"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("full option"),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                color: Colors.white,
                child: Column(
                  children: [
                    CustomingText(
                        text: "Description",
                        color: Colors.black,
                        size: 30,
                        weight: FontWeight.bold),
                    SizedBox(
                      height: 20,
                    ),
                    CustomingText(
                        text:
                            """Description DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription
                        DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription""",
                        color: Colors.black,
                        size: 20,
                        weight: FontWeight.w300),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
