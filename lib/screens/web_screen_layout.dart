import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/widget/chat_list.dart';
import 'package:whatsapp/widget/contact_list.dart';
import 'package:whatsapp/widget/web_chat_appbar.dart';
import 'package:whatsapp/widget/web_profile_bar.dart';
import 'package:whatsapp/widget/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Web Profile Bar
                  WebProfileBar(),
                  // Web Search Bar
                  WebSearchBar(),
                  //ConTack List from info
                  ContactsList(),
                ],
              ),
            ),
          ),
          // Web Screen
          Container(
            width: MediaQuery.of(context).size.width*0.75,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover
                ),
            ),
            child:  Column(
              children: [
                // Chat App Bar
                const WebChatAppBar(),
                //Chat List
                const Expanded(child: ChatList()),
                // Message Input Box
                Container(
                  height: height * 0.07,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor
                      )
                    ),
                    color: chatBarMessage
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.attach_file,color: Colors.grey,)
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 15
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: searchBarColor,
                                filled: true,
                                hintText: "Type a Message",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none
                                    )
                                ),
                                contentPadding: const EdgeInsets.only(left: 20)
                              ),
                            ),
                          )
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.mic,color: Colors.grey)
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
