import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomElevatedButton extends StatelessWidget {
  String? departmentName;

  String? nextPage;

  CustomElevatedButton({
    super.key,
    required this.departmentName,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue[200],
        ),
        onPressed: () {
          Get.to(() => nextPage);
        },
        child: Text(
          "$departmentName",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
