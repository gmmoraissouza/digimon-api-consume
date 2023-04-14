import 'package:json_annotation/json_annotation.dart';

part 'digimon.g.dart';

@JsonSerializable()
class Digimon {
  final String name;
  final String img;
  final String level;

  Digimon({required this.name, required this.img, required this.level});

  factory Digimon.fromJson(Map<String, dynamic> json) =>
      _$DigimonFromJson(json);

  Map<String, dynamic> toJson() => _$DigimonToJson(this);
}
