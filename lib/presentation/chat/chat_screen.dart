import 'package:app_yes_no_20024_2/presentation/widgeets/MessageFieldBox.dart';
import 'package:app_yes_no_20024_2/presentation/widgeets/her_message_Bubble.dart';
import 'package:app_yes_no_20024_2/presentation/widgeets/my_message_bubble.dart';
import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return index.isEven
                        ? const MyMessageBubble(
                            message: "dame de comer",
                          )
                        : const HerMessageBubble(
                            message: "nel pastel",
                            urlGif:
                                'https://yesno.wtf/assets/no/5-73e4adfe4da265a646fe517128bb5bf2.gif');
                  }),
            ),
            const Messagefieldbox()
          ])),
    );
  }
}
