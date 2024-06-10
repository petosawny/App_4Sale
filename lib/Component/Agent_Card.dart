import 'package:code/view/Home_4sale/NavBar_Pages/Account/brranches_pages/Contacts/Agent/Agent_info_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAgentCard extends StatelessWidget {
   AddAgentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.grey[50],
        height: MediaQuery.of(context).size.height*.32,
        width: MediaQuery.of(context).size.width*.45,
        child: Card(
          child: Column(
            children: [
              InkWell(
                onTap: (){
Get.to(() => AgentInfo());
                },
                child: CircleAvatar(
                  maxRadius: 80,
                  backgroundImage: AssetImage("assets/icons/5_series.jfif"),
                ),
              ),
              Text("data",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                    height: MediaQuery.of(context).size.height * .035,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {
                      },
                      child: Text(
                        'Call',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                    height: MediaQuery.of(context).size.height * .035,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {
                      },
                      child: Text(
                        'SMS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
