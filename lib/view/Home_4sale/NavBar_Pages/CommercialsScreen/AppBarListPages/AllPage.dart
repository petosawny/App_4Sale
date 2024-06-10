import 'package:code/Component/CommercialClipRRect.dart';
import 'package:flutter/material.dart';

class AllPage extends StatelessWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Row(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      children: [
                        CommercialClipRRect(commercialImage: 'assets/icons/bmw.jfif',),
                        CommercialClipRRect(commercialImage: 'assets/icons/bmw.jfif',),
                        CommercialClipRRect(commercialImage: 'assets/icons/bmw.jfif',),

                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(

                      children: [
                        CommercialClipRRect(commercialImage: 'assets/icons/bmw.jfif',),
                        CommercialClipRRect(commercialImage: 'assets/icons/bmw.jfif',),
                        CommercialClipRRect(commercialImage: 'assets/icons/bmw.jfif',),

                      ],
                    ),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
