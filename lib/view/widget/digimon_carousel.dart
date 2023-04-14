import 'package:flutter/material.dart';

import '../../constant/text_style.dart';
import '../../entity/digimon.dart';
import 'component/digimon_card.dart';

class DigimonCarousel extends StatelessWidget {
  const DigimonCarousel({
    Key? key,
    required this.level,
    required this.digimon,
  }) : super(key: key);

  final String level;
  final List<Digimon> digimon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            child: Center(
              child: Text(
                level,
                style: levelStyle,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: digimon.map((e) => DigimonCard(digimon: e)).toList(),
          ),
        ),
      ],
    );
  }
}
