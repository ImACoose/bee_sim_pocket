import 'package:bee_sim_pocket_info/features/bees/models/bee_model.dart';
import 'package:flutter/material.dart';

class BeeDescriptionScreen extends StatelessWidget {
  Bee beeName;

  BeeDescriptionScreen({required this.beeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(beeName.name),
          Image.asset(beeName.imagePathName),
          Text(beeName.rarity.name),
          Text(beeName.beeColor.name),
        ],
      ),
    );
  }
}
