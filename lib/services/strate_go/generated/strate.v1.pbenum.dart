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

class AttackResult extends $pb.ProtobufEnum {
  static const AttackResult AttackResult_NO_CONTEST = AttackResult._(0, _omitEnumNames ? '' : 'AttackResult_NO_CONTEST');
  static const AttackResult AttackResult_ATTACKEE_CAPTURED = AttackResult._(1, _omitEnumNames ? '' : 'AttackResult_ATTACKEE_CAPTURED');
  static const AttackResult AttackResult_ATTACKER_CAPTURED = AttackResult._(2, _omitEnumNames ? '' : 'AttackResult_ATTACKER_CAPTURED');
  static const AttackResult AttackResult_BOTH_CAPTURED = AttackResult._(3, _omitEnumNames ? '' : 'AttackResult_BOTH_CAPTURED');

  static const $core.List<AttackResult> values = <AttackResult> [
    AttackResult_NO_CONTEST,
    AttackResult_ATTACKEE_CAPTURED,
    AttackResult_ATTACKER_CAPTURED,
    AttackResult_BOTH_CAPTURED,
  ];

  static final $core.Map<$core.int, AttackResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AttackResult? valueOf($core.int value) => _byValue[value];

  const AttackResult._($core.int v, $core.String n) : super(v, n);
}

class PlanGameRequestCommand extends $pb.ProtobufEnum {
  static const PlanGameRequestCommand PlanGameRequestCommand_PICK_PIECE = PlanGameRequestCommand._(0, _omitEnumNames ? '' : 'PlanGameRequestCommand_PICK_PIECE');
  static const PlanGameRequestCommand PlanGameRequestCommand_PLACE_PIECE = PlanGameRequestCommand._(1, _omitEnumNames ? '' : 'PlanGameRequestCommand_PLACE_PIECE');
  static const PlanGameRequestCommand PlanGameRequestCommand_UNDO = PlanGameRequestCommand._(2, _omitEnumNames ? '' : 'PlanGameRequestCommand_UNDO');
  static const PlanGameRequestCommand PlanGameRequestCommand_REDO = PlanGameRequestCommand._(3, _omitEnumNames ? '' : 'PlanGameRequestCommand_REDO');
  static const PlanGameRequestCommand PlanGameRequestCommand_RESET = PlanGameRequestCommand._(100, _omitEnumNames ? '' : 'PlanGameRequestCommand_RESET');
  static const PlanGameRequestCommand PlanGameRequestCommand_READY = PlanGameRequestCommand._(200, _omitEnumNames ? '' : 'PlanGameRequestCommand_READY');

  static const $core.List<PlanGameRequestCommand> values = <PlanGameRequestCommand> [
    PlanGameRequestCommand_PICK_PIECE,
    PlanGameRequestCommand_PLACE_PIECE,
    PlanGameRequestCommand_UNDO,
    PlanGameRequestCommand_REDO,
    PlanGameRequestCommand_RESET,
    PlanGameRequestCommand_READY,
  ];

  static final $core.Map<$core.int, PlanGameRequestCommand> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PlanGameRequestCommand? valueOf($core.int value) => _byValue[value];

  const PlanGameRequestCommand._($core.int v, $core.String n) : super(v, n);
}

class PlayGameRequestCommand extends $pb.ProtobufEnum {
  static const PlayGameRequestCommand PlayGameRequestCommand_PICK_PIECE = PlayGameRequestCommand._(0, _omitEnumNames ? '' : 'PlayGameRequestCommand_PICK_PIECE');
  static const PlayGameRequestCommand PlayGameRequestCommand_MOVE_PIECE = PlayGameRequestCommand._(1, _omitEnumNames ? '' : 'PlayGameRequestCommand_MOVE_PIECE');
  static const PlayGameRequestCommand PlayGameRequestCommand_FOREFEIT = PlayGameRequestCommand._(2, _omitEnumNames ? '' : 'PlayGameRequestCommand_FOREFEIT');

  static const $core.List<PlayGameRequestCommand> values = <PlayGameRequestCommand> [
    PlayGameRequestCommand_PICK_PIECE,
    PlayGameRequestCommand_MOVE_PIECE,
    PlayGameRequestCommand_FOREFEIT,
  ];

  static final $core.Map<$core.int, PlayGameRequestCommand> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PlayGameRequestCommand? valueOf($core.int value) => _byValue[value];

  const PlayGameRequestCommand._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
