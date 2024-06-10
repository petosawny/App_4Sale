import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AgentInfo extends StatelessWidget {
   AgentInfo({Key? key}) : super(key: key);
String? agentName = "Peter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
          onPressed: () {
            Get.back() ;
          },
        ),
        centerTitle: true,
        title: Text("Agent Details",
          style: TextStyle(
            fontWeight: FontWeight.bold ,
            fontSize: 25,
            color: Colors.blue,
          ),
        ),
      ),
      body: Column(
        children: [

          // Container has Private Agent Pic And Name
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height*.22,
            width: double.infinity,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 45,
                  backgroundImage: AssetImage("assets/icons/5_series.jfif"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.02,
                ),
                Text("$agentName",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),),
              ],
            ),
          ),

          // Row Contain Call And Message Buttons
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Call Now Button
                Container(
                  height:  MediaQuery.of(context).size.height * .06,
                  width:  MediaQuery.of(context).size.width * .45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {

                    },
                    child:
                        Text(
                          "Call Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                  ),
                ),

                // Message Button
                Container(
                  height:  MediaQuery.of(context).size.height * .06,
                  width:  MediaQuery.of(context).size.width * .45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    child:
                        Text(
                          "Message",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),

                  ),
                ),
              ],
            ),
          ),



        ],
      ) ,
    );
  }
}
