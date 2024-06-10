
import 'package:code/view/Home_4sale/NavBar_Pages/CommercialsScreen/AppBarListPages/CommercialDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeCommercialCard extends StatelessWidget {
  String? commercial_image = "assets/icons/bmw.jfif" ;

   HomeCommercialCard(
    this.commercial_image ,
       );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        child: FittedBox(
          fit: BoxFit.fill,
          child: InkWell(
            onTap: (){
              Get.to(()=> CommercialDetailsPage(details_image: "$commercial_image",));
            },
            child: ClipRect(
              child: Image.asset(
                  '$commercial_image'),
            ),
          ),
        ),
      ),
    );
  }
}
