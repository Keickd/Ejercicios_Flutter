import 'package:flutter/material.dart';

class CardWidgetImagen extends StatelessWidget {
  const CardWidgetImagen({super.key, required this.imagenString});

  final String imagenString;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 25),
      child: _Imagen(size: size, imagenString: imagenString),
    );
  }
}

class _Imagen extends StatelessWidget {
  const _Imagen({
    super.key,
    required this.size,
    required this.imagenString,
  });

  final Size size;
  final String imagenString;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FadeInImage(
        placeholder: AssetImage('assets/$imagenString'),
        image: AssetImage('assets/$imagenString'),
        fit: BoxFit.cover,
      ),
    );
  }
}
