
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class e extends StatelessWidget {
  const e({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Call Button
        Container(
          height:  MediaQuery.of(context).size.height * .06,
          width:  MediaQuery.of(context).size.width * .45,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              backgroundColor: Colors.blue[800],

            ),
            onPressed: () {

            },
            child: Row(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 25,
                ),
                Text(
                  "Call Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),


        // whats App Button
        Container(
          height:  MediaQuery.of(context).size.height * .06,
          width:  MediaQuery.of(context).size.width * .45,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              backgroundColor: Colors.green,

            ),
            onPressed: () {

            },
            child: Row(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 25,
                ),
                Text(
                  "WhatsApp",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
