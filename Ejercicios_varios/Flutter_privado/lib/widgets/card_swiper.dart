import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/providerFotoTexto.dart';
import 'widgets.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final providerFotoTexto =
        Provider.of<ProviderFotoTexto>(context, listen: false);

    Future.delayed(Duration.zero, () {
      providerFotoTexto.indice = 0;
    });

    return Container(
      width: double.infinity,
      height: size.height * 0.68,
      child: Swiper(
        index: 0,
        itemCount: providerFotoTexto.listaFotoTexto.length,
        onIndexChanged: (value) {
          Future.delayed(Duration.zero, () {
            providerFotoTexto.indice = value;
          });
        },
        layout: SwiperLayout.STACK,
        itemWidth: size.width,
        itemBuilder: (context, index) {
          return CardWidgetImagen(
            imagenString: providerFotoTexto.listaFotoTexto[index].imagenString,
          );
        },
      ),
    );
  }
}
