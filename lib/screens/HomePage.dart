import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/ChatWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding:  EdgeInsets.only(top: 15),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.only(top: 12,right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                        child: Text(
                          "New Group",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text(
                        "New Broadcast",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text(
                        "Linked devices",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text(
                        "Starred messages",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 5,
                      child: Text(
                        "Payments",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 6,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.teal,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle:
                TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 24,
                    child: Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Tab(
                      child: Row(children: [
                        Text("CHATS"),
                        Container(
                          alignment: Alignment.center,
                          //padding: EdgeInsets.all(2),
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text("12",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],),
                    ),
                  ),
                  //tab3
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text("STATUS"),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text("CALLS"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(flex: 1,
                child: TabBarView(
                    children: [
                      //tab 1 camera
                      Container(color: Colors.black,),
                      //tab 2 chat
                      // Container(color: Colors.black,),
                      const ChatWidget(),
                      //tab 3 status
                      Container(color: Colors.black,),
                      //tab 4 call
                      Container(color: Colors.black,),
                    ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
