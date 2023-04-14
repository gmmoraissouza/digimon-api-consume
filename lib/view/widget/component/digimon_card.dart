import 'package:digimon_api_consume/constant/text_style.dart';
import 'package:digimon_api_consume/entity/digimon.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class DigimonCard extends StatelessWidget {
  const DigimonCard({
    Key? key,
    required this.digimon,
  }) : super(key: key);

  final Digimon digimon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(digimon.img),
                ],
              ),
            );
          }),
      child: Card(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: digimon.img,
                )),
            Expanded(
              flex: 1,
              child: Text(
                digimon.name,
                style: digimonNameStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
