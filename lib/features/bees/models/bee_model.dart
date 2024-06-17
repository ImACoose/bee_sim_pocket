import 'package:bee_sim_pocket_info/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bee_model.freezed.dart';
part 'bee_model.g.dart';

enum Rarity { common, rare, epic, legendary, mythic }

enum BeeColor { colorless, blue, red }

@freezed
class Bee with _$Bee {
  factory Bee({
    required String name,
    required String imagePathName,
    required Rarity rarity,
    required BeeColor beeColor,
  }) = _Bee;

  static Map<Rarity, ChipColors> rarityColorMap() => {
        Rarity.common: ColorConstants.basicChipColours,
        Rarity.rare: ColorConstants.basicChipColours,
        Rarity.epic: ColorConstants.basicChipColours,
        Rarity.legendary: ColorConstants.basicChipColours,
        Rarity.mythic: ColorConstants.basicChipColours,
      };

  factory Bee.fromJson(Map<String, dynamic> json) => _$BeeFromJson(json);
}
