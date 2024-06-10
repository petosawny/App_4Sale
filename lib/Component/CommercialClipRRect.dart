import 'package:code/view/Home_4sale/NavBar_Pages/CommercialsScreen/AppBarListPages/CommercialDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommercialClipRRect extends StatelessWidget {
  String? commercialImage ;
  CommercialClipRRect({super.key, required this.commercialImage});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height*.38,
          width: MediaQuery.of(context).size.width*.45,
          child: FittedBox(
            fit: BoxFit.fill,
            child: InkWell(
              onTap: (){
                Get.to(()=> CommercialDetailsPage());
              },
              child: ClipRect(
                child: Image.asset(
                    'assets/icons/bmw.jfif'),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}











//
//
// ClipRRect(
//
// // borderRadius: null,
// child: // Image.Network("") ,
// Image.asset(
// "assets/icons/logo.png",
// ),
// );