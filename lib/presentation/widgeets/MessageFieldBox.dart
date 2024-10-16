import 'package:flutter/material.dart';

class Messagefieldbox extends StatelessWidget {
  final ValueChanged<String> onFieldSummit;
  const Messagefieldbox({super.key, required this.onFieldSummit});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNoe = FocusNode();

    return TextFormField(
      onTapOutside: (event) {
        focusNoe.unfocus();
      },
      controller: textController,
      decoration: inputdecorationTheme(textController, onFieldSummit),
      focusNode: focusNoe,
      onFieldSubmitted: (value) =>
          onfieldSubmitted(value, textController, focusNoe, onFieldSummit),
      onChanged: (value) {
        print("Jugando con los Datos: $value");
      },
    );
  }

  InputDecoration inputdecorationTheme(
      TextEditingController textController, ValueChanged<String> agregar) {
    final outlineInputBorder = OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    return InputDecoration(
        hintText: 'Envia tu pregunta a la toxica "?',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: insertarIconoBoton(textController, agregar));
  }

  IconButton insertarIconoBoton(
          TextEditingController textController, ValueChanged<String> agregar) =>
      IconButton(
          onPressed: () {
            final value = textController.value.text;
            agregar(value);
            print("le ise click en el boton $value");
            textController.clear();
          },
          icon: const Icon(Icons.send_outlined));

  void onfieldSubmitted(String value, TextEditingController textController,
      FocusNode focusNoe, ValueChanged<String> agregar) {
    print('no se para que sirbe $value');
    agregar(value);
    textController.clear();
    focusNoe.requestFocus();
  }
}
