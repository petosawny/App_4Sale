
import 'package:flutter/material.dart';

class Specifications_Container extends StatelessWidget {
   Specifications_Container({
     required
   this.data ,
});
   Icon? icon ;
   String? data ;
String? date ;
String? distance ;
String? motor_kind ;
String? geerbox ;
String? location ;
String? color ;
String? carDepartment ;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Row(
        children: [
          Icon(Icons.calendar_month_outlined),
          SizedBox(width: 10,),
          Text("$data"),
        ],
      ),
    );
  }
}
