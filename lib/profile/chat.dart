import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
const ChatWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWRlXIiKhhCPeOeSpAD6YJgNOStht_wug8qxFgWQJn&s"),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("username"),
                          SizedBox(height: 6,),
                          Text("message",style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(DateTime.now().toString(),style: TextStyle(fontSize: 12,color: true?Colors.pink:Colors.grey.shade500),),
          ],
        ),
      ),
    );
  }
}