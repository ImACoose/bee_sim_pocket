// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeeImpl _$$BeeImplFromJson(Map<String, dynamic> json) => _$BeeImpl(
      name: json['name'] as String,
      imagePathName: json['imagePathName'] as String,
      rarity: $enumDecode(_$RarityEnumMap, json['rarity']),
      beeColor: $enumDecode(_$BeeColorEnumMap, json['beeColor']),
    );

Map<String, dynamic> _$$BeeImplToJson(_$BeeImpl instance) => <String, dynamic>{
      'name': instance.name,
      'imagePathName': instance.imagePathName,
      'rarity': _$RarityEnumMap[instance.rarity]!,
      'beeColor': _$BeeColorEnumMap[instance.beeColor]!,
    };

const _$RarityEnumMap = {
  Rarity.common: 'common',
  Rarity.rare: 'rare',
  Rarity.epic: 'epic',
  Rarity.legendary: 'legendary',
  Rarity.mythic: 'mythic',
};

const _$BeeColorEnumMap = {
  BeeColor.colorless: 'colorless',
  BeeColor.blue: 'blue',
  BeeColor.red: 'red',
};
