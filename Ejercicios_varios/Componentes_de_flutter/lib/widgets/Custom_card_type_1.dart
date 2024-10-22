import 'package:fl_components/Themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(Icons.photo, color: AppTheme.primary),
          title: Text('Soy un titulo'),
          subtitle: Text(
              'Eu eu adipisicing nostrud irure in et quis aliquip duis sint aute consectetur. Mollit do sint dolore sint sit minim elit ex non pariatur. Aute non est ad amet cupidatat dolor cillum. Consequat amet in sit non ullamco deserunt.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancel')),
              TextButton(onPressed: () {}, child: const Text('Ok'))
            ],
          ),
        )
      ],
    ));
  }
}
