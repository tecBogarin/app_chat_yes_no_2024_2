import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mi novia loca"),
        ),
        body: Center(
            child:
                FilledButton.tonal(onPressed: () {}, child: const Text("click me"))));
  }
}
