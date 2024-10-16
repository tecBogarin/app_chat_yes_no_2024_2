import 'package:app_yes_no_20024_2/domain/entities/message.dart';
import 'package:app_yes_no_20024_2/presentation/providers/chat_provider.dart';
import 'package:app_yes_no_20024_2/presentation/widgeets/MessageFieldBox.dart';
import 'package:app_yes_no_20024_2/presentation/widgeets/her_message_Bubble.dart';
import 'package:app_yes_no_20024_2/presentation/widgeets/my_message_bubble.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: const _ChatView());
  }

  AppBar _appBar() => AppBar(
      title: const Text("Mi novia loca"),
      centerTitle: false,
      leading: const Padding(
        padding: EdgeInsets.all(5.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://cinescopia.com/wp-content/uploads/2011/08/Scarlett-Johansson-scarlett-johansson-8836765-1600-1200-615x461.jpg'),
        ),
      ));
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    final messages = chatProvider.message;
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            Expanded(
              child: ListView.builder(
                  controller: chatProvider.chatController,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return messages[index].fromWho == FromWho.me
                        ? MyMessageBubble(
                            message: messages[index].text,
                          )
                        : HerMessageBubble(
                            message: messages[index].text,
                            urlGif: messages[index].imageUrl);
                  }),
            ),
            Messagefieldbox(onFieldSummit: chatProvider.sendMessage)
          ])),
    );
  }
}
