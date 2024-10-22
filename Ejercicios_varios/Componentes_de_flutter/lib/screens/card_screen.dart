import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  final imagesList = [
    'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
    'http://fc00.deviantart.net/fs71/f/2012/329/5/0/wonderland___landscape_calendar__2_by_ivanandreevich-d4u0odw.jpg',
    'https://images.pling.com/img/00/00/64/55/98/1772182/mountain-landscape-g842da8770-1920.jpg',
    'https://www.lukas-petereit.com/wp-content/uploads/2017/10/Rakotzbr%C3%BCcke-Bridge-Rakotz-Kromlau-Lake-Sun-Sunrise-Landscape-Reflection-Germany-Saxony-Travel-Photography-Nature-Photo-Spreewald-2.jpg'
  ];

  CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            children: const [
              CustomCardType1(),
              SizedBox(height: 10),
              CustomCardType2(
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
                  name: 'Un hermoso paisaje'),
              SizedBox(height: 10),
              CustomCardType2(
                  'http://fc00.deviantart.net/fs71/f/2012/329/5/0/wonderland___landscape_calendar__2_by_ivanandreevich-d4u0odw.jpg'),
              SizedBox(height: 10),
              CustomCardType2(
                  'https://images.pling.com/img/00/00/64/55/98/1772182/mountain-landscape-g842da8770-1920.jpg'),
              SizedBox(height: 10),
              CustomCardType2(
                  'https://www.lukas-petereit.com/wp-content/uploads/2017/10/Rakotzbr%C3%BCcke-Bridge-Rakotz-Kromlau-Lake-Sun-Sunrise-Landscape-Reflection-Germany-Saxony-Travel-Photography-Nature-Photo-Spreewald-2.jpg'),
              SizedBox(height: 50)
            ]));
  }
}
