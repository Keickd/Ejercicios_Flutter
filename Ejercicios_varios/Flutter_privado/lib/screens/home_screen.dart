import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:te_quiero/provider/providerFotoTexto.dart';
import 'package:te_quiero/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Para mi idiota 🤗❤️'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              CardSwiper(),
              _TextoCambiante(),
              SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}

class _TextoCambiante extends StatelessWidget {
  const _TextoCambiante({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: const CardWidgetTexto(),
    );
  }
}
