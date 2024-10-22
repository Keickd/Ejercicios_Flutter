import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:te_quiero/provider/providerFotoTexto.dart';

class CardWidgetTexto extends StatelessWidget {
  const CardWidgetTexto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderFotoTexto>(context);
    Future.delayed(Duration.zero, () {
      provider.getTextoSegunIndice(provider.indice);
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: double.infinity,
          color: Colors.black.withOpacity(0.05),
          child: Text(
            provider.texto,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
