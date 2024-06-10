
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: () {
            Get.back() ;
          },
        ),
        title: Text("About Us",
          style: TextStyle(
            fontWeight: FontWeight.bold ,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(

          children: [
            Image.asset("assets/icons/logo.png",
              height: MediaQuery.of(context).size.height* .3,
              width:MediaQuery.of(context).size.width* .3,
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("About Us",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),
              ],
            ),
            SizedBox(height: 20,),
            Text("About Us About UsAbout UsAbout UsAbout UsAbout "
                "UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout Us",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
