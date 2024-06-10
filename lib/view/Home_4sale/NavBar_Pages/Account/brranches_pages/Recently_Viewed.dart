import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: () {
            Get.back() ;
          },
        ),
        title: Text("Recently Vieeeeeeewed",
          style: TextStyle(
          fontWeight: FontWeight.bold ,
          fontSize: 25,
          color: Colors.black,
        ),
        ),
      ),
    );
  }
}
