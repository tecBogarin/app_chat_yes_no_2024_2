import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  final String message;
  final String? urlGif;
  const HerMessageBubble({super.key, this.message = '', this.urlGif});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _ImageBubble(urlGif: urlGif),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String? urlGif;
  const _ImageBubble({this.urlGif});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);
    final sizeWidth = size.width > 440.0 ? size.width * 0.4 : size.width * 0.7;
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(urlGif!,
            width: sizeWidth,
            height: 150,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) =>
                (loadingProgress == null)
                    ? child
                    : Container(
                        width: sizeWidth,
                        height: 150,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text("Cargando Imagen..."),
                      )));
  }
}
