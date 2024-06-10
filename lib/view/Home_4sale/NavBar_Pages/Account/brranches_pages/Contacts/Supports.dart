import 'package:code/Customs_Widgets/CustomText.dart';
import 'package:code/view/Home_4sale/NavBar_Pages/Account/brranches_pages/Contacts/Support/Help/Help_PAge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Supports extends StatelessWidget {
  const Supports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        title: Text(
          "Support",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.blue,
          ),
        ),
      ),
      body: Column(
        children: [
          // First Button
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: MediaQuery.of(context).size.height * .06,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {},
                child: CustomingText(
                  color: Colors.white,
                  size: 20,
                  text: "FAQs",
                  weight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // The Divider
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: MediaQuery.of(context).size.width * .57,
                  endIndent: MediaQuery.of(context).size.width * .01,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomingText(
                    text: "Or",
                    color: Colors.red,
                    size: 15,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: MediaQuery.of(context).size.width * .01,
                  endIndent: MediaQuery.of(context).size.width * .57,
                ),
              ),
            ],
          ),

          // TextFormField
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.white,
            height: 50.0,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(vertical: 0.0),
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Icon(
                            Icons.mail_rounded,
                            color: Colors.grey,
                          ),
                          // icon is 48px widget.
                        ),
                        hintText: 'Email or reqquired to send a ticket',
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ],
            ),
          ),

          // divider
          Padding(
            padding: const EdgeInsets.only(right: 5, left: 5),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),

          // Two Buttons
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Call Button
                Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width * .45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: CustomingText(
                      color: Colors.white,
                      size: 20,
                      text: "My Ticket",
                      weight: FontWeight.bold,
                    ),
                  ),
                ),

                // whats App Button
                Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width * .45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: CustomingText(
                      color: Colors.white,
                      size: 20,
                      text: "Create ticket",
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // The Divider
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: MediaQuery.of(context).size.width * .57,
                  endIndent: MediaQuery.of(context).size.width * .01,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomingText(
                    text: "Or",
                    color: Colors.red,
                    size: 15,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: MediaQuery.of(context).size.width * .01,
                  endIndent: MediaQuery.of(context).size.width * .57,
                ),
              ),
            ],
          ),
          // Two Buttons
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Call Button
                Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width * .45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: CustomingText(
                      color: Colors.white,
                      size: 20,
                      text: "Live Support",
                      weight: FontWeight.bold,
                    ),
                  ),
                ),

                // whats App Button
                Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width * .45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: CustomingText(
                      color: Colors.white,
                      size: 20,
                      text: "Call Us",
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Last Button
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: MediaQuery.of(context).size.height * .06,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Get.to(() => HelpPage()) ;
                },
                child: CustomingText(
                  color: Colors.white,
                  size: 20,
                  text: "Help",
                  weight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Last Text
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: CustomingText(
                text: "Our live chat is available daily from 9am to 12am",
                color: Colors.black,
                size: 16,
                weight: null),
          ),

        ],
      ),
    );
  }
}
