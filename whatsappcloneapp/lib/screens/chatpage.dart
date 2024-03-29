import 'package:flutter/material.dart';
import 'package:whatsappcloneapp/models/chats.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vishnuData.length,
      itemBuilder: (BuildContext context, i)=>Column(
       children: [
       const Divider(height: 10.0),
       ListTile(
        leading: CircleAvatar(
         maxRadius: 30,
         backgroundImage: NetworkImage(vishnuData[i].dp), 
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
            Text(vishnuData[i].name,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            Text(vishnuData[i].time,style:const  TextStyle(color: Colors.grey,fontSize: 14))
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Text(vishnuData[i].message,style: TextStyle(color: Colors.grey,fontSize: 18)),
        ),
       ),
        
       ], 
       
      )
 
    );
  }
}
 