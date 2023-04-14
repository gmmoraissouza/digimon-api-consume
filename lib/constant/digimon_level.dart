enum DigimonLevel {
  fresh,
  inTraining,
  rookie,
  mega,
  ultimate,
  champion,
  armor;

  String get level {
    switch (this) {
      case DigimonLevel.fresh:
        return 'Fresh';
      case DigimonLevel.inTraining:
        return 'In Training';
      case DigimonLevel.rookie:
        return 'Rookie';
      case DigimonLevel.mega:
        return 'Mega';
      case DigimonLevel.ultimate:
        return 'Ultimate';
      case DigimonLevel.champion:
        return 'Champion';
      case DigimonLevel.armor:
        return 'Armor';
    }
  }

  String get name {
    switch (this) {
      case DigimonLevel.fresh:
        return 'Bebê';
      case DigimonLevel.inTraining:
        return 'Em treinamento';
      case DigimonLevel.rookie:
        return 'Criança';
      case DigimonLevel.mega:
        return 'Ultimato';
      case DigimonLevel.ultimate:
        return 'Perfeito';
      case DigimonLevel.armor:
        return 'Armadura';
      case DigimonLevel.champion:
        return 'Adulto';
    }
  }
}
