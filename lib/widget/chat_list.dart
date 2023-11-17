import 'package:flutter/cupertino.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/widget/my_message_card.dart';
import 'package:whatsapp/widget/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
        itemBuilder: (context, index) {
          if(messages[index]['isMe'] == true){
            // MYMessage -> Card
            return  MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString(),
            );
          }
          // SenderMessage ->  Card
          return SenderMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
    );
  }
}
