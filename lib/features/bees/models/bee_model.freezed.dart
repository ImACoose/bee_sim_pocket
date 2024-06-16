// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bee _$BeeFromJson(Map<String, dynamic> json) {
  return _Bee.fromJson(json);
}

/// @nodoc
mixin _$Bee {
  String get name => throw _privateConstructorUsedError;
  Rarity get rarity => throw _privateConstructorUsedError;
  BeeColor get beeColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeeCopyWith<Bee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeeCopyWith<$Res> {
  factory $BeeCopyWith(Bee value, $Res Function(Bee) then) =
      _$BeeCopyWithImpl<$Res, Bee>;
  @useResult
  $Res call({String name, Rarity rarity, BeeColor beeColor});
}

/// @nodoc
class _$BeeCopyWithImpl<$Res, $Val extends Bee> implements $BeeCopyWith<$Res> {
  _$BeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rarity = null,
    Object? beeColor = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
      beeColor: null == beeColor
          ? _value.beeColor
          : beeColor // ignore: cast_nullable_to_non_nullable
              as BeeColor,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeeImplCopyWith<$Res> implements $BeeCopyWith<$Res> {
  factory _$$BeeImplCopyWith(_$BeeImpl value, $Res Function(_$BeeImpl) then) =
      __$$BeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Rarity rarity, BeeColor beeColor});
}

/// @nodoc
class __$$BeeImplCopyWithImpl<$Res> extends _$BeeCopyWithImpl<$Res, _$BeeImpl>
    implements _$$BeeImplCopyWith<$Res> {
  __$$BeeImplCopyWithImpl(_$BeeImpl _value, $Res Function(_$BeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rarity = null,
    Object? beeColor = null,
  }) {
    return _then(_$BeeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
      beeColor: null == beeColor
          ? _value.beeColor
          : beeColor // ignore: cast_nullable_to_non_nullable
              as BeeColor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeeImpl implements _Bee {
  _$BeeImpl({required this.name, required this.rarity, required this.beeColor});

  factory _$BeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeeImplFromJson(json);

  @override
  final String name;
  @override
  final Rarity rarity;
  @override
  final BeeColor beeColor;

  @override
  String toString() {
    return 'Bee(name: $name, rarity: $rarity, beeColor: $beeColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.beeColor, beeColor) ||
                other.beeColor == beeColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, rarity, beeColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeeImplCopyWith<_$BeeImpl> get copyWith =>
      __$$BeeImplCopyWithImpl<_$BeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeeImplToJson(
      this,
    );
  }
}

abstract class _Bee implements Bee {
  factory _Bee(
      {required final String name,
      required final Rarity rarity,
      required final BeeColor beeColor}) = _$BeeImpl;

  factory _Bee.fromJson(Map<String, dynamic> json) = _$BeeImpl.fromJson;

  @override
  String get name;
  @override
  Rarity get rarity;
  @override
  BeeColor get beeColor;
  @override
  @JsonKey(ignore: true)
  _$$BeeImplCopyWith<_$BeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
