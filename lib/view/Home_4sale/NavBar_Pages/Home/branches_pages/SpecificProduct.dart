

import 'package:code/Customs_Widgets/CustomText.dart';
import 'package:code/Utilities/Tab_Bar_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpecificProduct extends StatelessWidget {
  String? picLink;
  String? title_productName;

  SpecificProduct({
    this.picLink,
    this.title_productName
});
  @override
  // first cards in home
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomingText(text: '$title_productName',
          size: 20,
          weight: FontWeight.w300,
          color: Colors.black,

        ),
        elevation: 0,
        backgroundColor: Colors.white,
       actions: [


       ],
        leading: IconButton( onPressed: () { Get.back(); },
          icon: Icon(Icons.arrow_back_ios_outlined , color: Colors.black,),),
      ),
      backgroundColor: Colors.grey[200],
      // body: BottomOfAppBar(tabs: [
      //
      // ], controller: null, ),
    );
  }
}
