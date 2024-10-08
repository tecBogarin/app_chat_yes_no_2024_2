import 'package:flutter/material.dart';

class Messagefieldbox extends StatelessWidget {
  const Messagefieldbox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: colors.primary)),
          filled: true,
          suffixIcon:
              IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined))),
    );
  }
}
