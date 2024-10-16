import 'package:app_yes_no_20024_2/domain/entities/message.dart';
import 'package:app_yes_no_20024_2/infrastructure/datasources/yes_no_answer.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  YesNoAnswer responder = YesNoAnswer();
  ScrollController chatController = ScrollController();
  List<Message> message = [];

  Future<void> sendMessage(String text) async {
    text = text.trim();
    if (text.isEmpty) return;
    message.add(Message(text: text, fromWho: FromWho.me));
    if (text.endsWith('?')) {
      await herReply();
    }
    notifyListeners();
    movieScrollToBotton();
  }

  Future<void> herReply() async {
    final response = await responder.getAnswer();
    message.add(response);
  }

  Future<void> movieScrollToBotton() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatController.animateTo(chatController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}
