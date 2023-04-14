import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../entity/digimon.dart';

class GetDigimon extends ChangeNotifier {
  final dio = Dio();

  List<Digimon> listDigimon = [];

  GetDigimon() {
    getListDigimons();
  }

  Future getListDigimons() async {
    final response =
        await dio.get('https://digimon-api.vercel.app/api/digimon');
    listDigimon =
        (response.data as List).map((e) => Digimon.fromJson(e)).toList();
    notifyListeners();
  }
}
