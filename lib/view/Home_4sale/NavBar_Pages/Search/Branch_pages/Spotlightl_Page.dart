import 'package:code/Utilities/User_Cards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowAllPage extends StatelessWidget {
  const ShowAllPage({Key? key}) : super(key: key);

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
        title: Text("Spotlight",style: TextStyle(
          fontWeight: FontWeight.bold ,
          fontSize: 25,
          color: Colors.black,
         ),
        ),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
