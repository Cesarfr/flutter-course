import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6_4x3.jpg',
            name: 'Paisaje 1',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://images.squarespace-cdn.com/content/v1/5795a6914402433b8b4b3f74/1652319375667-SCDOQWQARKYR9Q16O6OA/IMG_4617.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1.jpg',
            name: 'Paisaje 3',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
