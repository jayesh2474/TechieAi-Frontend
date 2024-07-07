import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  ChatUser myself = ChatUser(id: '1', firstName: 'Ankit');
  ChatUser bot = ChatUser(id: '2', firstName: 'Gemini');

  List<ChatMessage> allmessages = [];

  getdata(ChatMessage m) {
    allmessages.insert(0, m);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DashChat(
      currentUser: myself,
      onSend: (ChatMessage m) {
        getdata(m);
      },
      messages: allmessages,
    ));
  }
}
