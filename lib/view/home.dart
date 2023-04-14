import 'package:digimon_api_consume/usecase/get_digimon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant/digimon_level.dart';
import 'widget/digimon_carousel.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<GetDigimon>();
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Digimon API Consume')),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ListView(
              children: [
                DigimonCarousel(
                    level: DigimonLevel.inTraining.name,
                    digimon: provider.listDigimon
                        .where((element) =>
                            element.level == DigimonLevel.inTraining.level)
                        .toList()),
                DigimonCarousel(
                    level: DigimonLevel.rookie.name,
                    digimon: provider.listDigimon
                        .where((element) =>
                            element.level == DigimonLevel.rookie.level)
                        .toList()),
                DigimonCarousel(
                    level: DigimonLevel.champion.name,
                    digimon: provider.listDigimon
                        .where((element) =>
                            element.level == DigimonLevel.champion.level)
                        .toList()),
                DigimonCarousel(
                    level: DigimonLevel.ultimate.name,
                    digimon: provider.listDigimon
                        .where((element) =>
                            element.level == DigimonLevel.ultimate.level)
                        .toList()),
                DigimonCarousel(
                    level: DigimonLevel.mega.name,
                    digimon: provider.listDigimon
                        .where((element) =>
                            element.level == DigimonLevel.mega.level)
                        .toList()),
                DigimonCarousel(
                    level: DigimonLevel.armor.name,
                    digimon: provider.listDigimon
                        .where((element) =>
                            element.level == DigimonLevel.armor.level)
                        .toList()),
              ],
            )));
  }
}
