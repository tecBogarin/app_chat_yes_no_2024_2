import 'package:app_yes_no_20024_2/config/theme/app_theme.dart';
import 'package:app_yes_no_20024_2/presentation/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'app chat',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 5).theme(),
        home: const ChatScreen());
  }
}
