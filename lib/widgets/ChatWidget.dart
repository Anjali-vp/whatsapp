import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
          ),
        child: Column(children: [
          for(int i=1;i<8; i++)
          InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/profilepicture/pro$i.jpg",
                      height: 65,
                      width: 65,
                    ),

                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Taylor",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Hello",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                 Spacer(),
                 Column(
                   children: [
                     Text(
                       "11.50",
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.greenAccent,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                     SizedBox(height: 6,),
                     Container(
                       alignment: Alignment.center,
                       height: 25,
                       width: 25,
                       decoration: BoxDecoration(
                         color: Colors.greenAccent,
                         borderRadius: BorderRadius.circular(20)
                       ),
                       child: Text(
                         "4",
                         style: TextStyle(
                           fontWeight: FontWeight.w500,
                           color: Colors.white,
                           fontSize: 17,
                         ),
                       ),
                     ),
                   ],
                 )
                ],
              ),
            ),
          ),
        ],) ,
      ),
    );
  }
}
