import 'package:code/view/Home_4sale/NavBar_Pages/Home/branches_pages/AutomotiveCardPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddUserCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(() => AutomotiveCardPAge()) ;
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/icons/5_series.jfif',
                height: MediaQuery.of(context).size.height*.13,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            SizedBox(height: 5,),
            Text(
              " BMW ",
              style: TextStyle(
                  color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text(
              "Supra",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "3 k USD",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "3 weeks",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

FillCard(String? coverPic) {}
