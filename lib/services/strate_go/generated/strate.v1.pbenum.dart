//
//  Generated code. Do not modify.
//  source: strate.v1.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// #region Player
class PlayerColor extends $pb.ProtobufEnum {
  static const PlayerColor PlayerColor_RED = PlayerColor._(0, _omitEnumNames ? '' : 'PlayerColor_RED');
  static const PlayerColor PlayerColor_BLUE = PlayerColor._(1, _omitEnumNames ? '' : 'PlayerColor_BLUE');

  static const $core.List<PlayerColor> values = <PlayerColor> [
    PlayerColor_RED,
    PlayerColor_BLUE,
  ];

  static final $core.Map<$core.int, PlayerColor> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PlayerColor? valueOf($core.int value) => _byValue[value];

  const PlayerColor._($core.int v, $core.String n) : super(v, n);
}

/// #region Game
class GameState extends $pb.ProtobufEnum {
  static const GameState GameState_SETUP = GameState._(0, _omitEnumNames ? '' : 'GameState_SETUP');
  static const GameState GameState_PLAN = GameState._(1, _omitEnumNames ? '' : 'GameState_PLAN');
  static const GameState GameState_PLAY = GameState._(2, _omitEnumNames ? '' : 'GameState_PLAY');
  static const GameState GameState_END = GameState._(3, _omitEnumNames ? '' : 'GameState_END');
  static const GameState GameState_ERROR = GameState._(90, _omitEnumNames ? '' : 'GameState_ERROR');

  static const $core.List<GameState> values = <GameState> [
    GameState_SETUP,
    GameState_PLAN,
    GameState_PLAY,
    GameState_END,
    GameState_ERROR,
  ];

  static final $core.Map<$core.int, GameState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GameState? valueOf($core.int value) => _byValue[value];

  const GameState._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
