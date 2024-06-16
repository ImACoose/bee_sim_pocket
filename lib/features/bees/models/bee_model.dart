
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bee_model.freezed.dart';
part 'bee_model.g.dart';

enum Rarity {common, rare, epic, legendary, mythic}
enum BeeColor {colorless, blue, red}

@freezed
class Bee with _$Bee {
  factory Bee({
    required String name,
    required Rarity rarity,
    required BeeColor beeColor,
  }) = _Bee;
	
  factory Bee.fromJson(Map<String, dynamic> json) =>
			_$BeeFromJson(json);
}
