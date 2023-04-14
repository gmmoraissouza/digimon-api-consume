import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'usecase/get_digimon.dart';
import 'view/home.dart';

void main() async {
  runApp(ChangeNotifierProvider(
    create: (_) => GetDigimon(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digimon API Consume',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const Home(),
    ),
  ));
}
