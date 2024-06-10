
import 'package:code/Component/Agent_Card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Agents extends StatelessWidget {
  const Agents({Key? key}) : super(key: key);

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
        title: Text("Agents",
          style: TextStyle(
            fontWeight: FontWeight.bold ,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              AddAgentCard(),
              AddAgentCard(),
            ],
          ),
          Row(
            children: [
              AddAgentCard(),
              AddAgentCard(),
            ],
          ),
          Row(
            children: [
              AddAgentCard(),
              AddAgentCard(),
            ],
          ),
          Row(
            children: [
              AddAgentCard(),
              AddAgentCard(),
            ],
          ),

        ],
      ),






    );
  }
}



//GridView.builder(
//         padding: EdgeInsets.symmetric(horizontal: 30),
//         gridDelegate:
//       SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 1/1 ,
//         crossAxisSpacing: 1  ,mainAxisSpacing: 1,
//       ),
//           itemCount: 2,
//           itemBuilder: (context, index) {
//             return Container(
//
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.grey,
//                 ),
//                 child: AddAgentCard());
//           },)
