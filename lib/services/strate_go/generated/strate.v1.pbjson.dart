//
//  Generated code. Do not modify.
//  source: strate.v1.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use playerColorDescriptor instead')
const PlayerColor$json = {
  '1': 'PlayerColor',
  '2': [
    {'1': 'PlayerColor_RED', '2': 0},
    {'1': 'PlayerColor_BLUE', '2': 1},
  ],
};

/// Descriptor for `PlayerColor`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List playerColorDescriptor = $convert.base64Decode(
    'CgtQbGF5ZXJDb2xvchITCg9QbGF5ZXJDb2xvcl9SRUQQABIUChBQbGF5ZXJDb2xvcl9CTFVFEA'
    'E=');

@$core.Deprecated('Use gameStateDescriptor instead')
const GameState$json = {
  '1': 'GameState',
  '2': [
    {'1': 'GameState_SETUP', '2': 0},
    {'1': 'GameState_PLAN', '2': 1},
    {'1': 'GameState_PLAY', '2': 2},
    {'1': 'GameState_END', '2': 3},
    {'1': 'GameState_ERROR', '2': 90},
  ],
};

/// Descriptor for `GameState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameStateDescriptor = $convert.base64Decode(
    'CglHYW1lU3RhdGUSEwoPR2FtZVN0YXRlX1NFVFVQEAASEgoOR2FtZVN0YXRlX1BMQU4QARISCg'
    '5HYW1lU3RhdGVfUExBWRACEhEKDUdhbWVTdGF0ZV9FTkQQAxITCg9HYW1lU3RhdGVfRVJST1IQ'
    'Wg==');

@$core.Deprecated('Use attackResultDescriptor instead')
const AttackResult$json = {
  '1': 'AttackResult',
  '2': [
    {'1': 'AttackResult_NO_CONTEST', '2': 0},
    {'1': 'AttackResult_ATTACKEE_CAPTURED', '2': 1},
    {'1': 'AttackResult_ATTACKER_CAPTURED', '2': 2},
    {'1': 'AttackResult_BOTH_CAPTURED', '2': 3},
  ],
};

/// Descriptor for `AttackResult`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List attackResultDescriptor = $convert.base64Decode(
    'CgxBdHRhY2tSZXN1bHQSGwoXQXR0YWNrUmVzdWx0X05PX0NPTlRFU1QQABIiCh5BdHRhY2tSZX'
    'N1bHRfQVRUQUNLRUVfQ0FQVFVSRUQQARIiCh5BdHRhY2tSZXN1bHRfQVRUQUNLRVJfQ0FQVFVS'
    'RUQQAhIeChpBdHRhY2tSZXN1bHRfQk9USF9DQVBUVVJFRBAD');

@$core.Deprecated('Use planGameRequestCommandDescriptor instead')
const PlanGameRequestCommand$json = {
  '1': 'PlanGameRequestCommand',
  '2': [
    {'1': 'PlanGameRequestCommand_PICK_PIECE', '2': 0},
    {'1': 'PlanGameRequestCommand_PLACE_PIECE', '2': 1},
    {'1': 'PlanGameRequestCommand_UNDO', '2': 2},
    {'1': 'PlanGameRequestCommand_REDO', '2': 3},
    {'1': 'PlanGameRequestCommand_RESET', '2': 100},
    {'1': 'PlanGameRequestCommand_READY', '2': 200},
  ],
};

/// Descriptor for `PlanGameRequestCommand`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List planGameRequestCommandDescriptor = $convert.base64Decode(
    'ChZQbGFuR2FtZVJlcXVlc3RDb21tYW5kEiUKIVBsYW5HYW1lUmVxdWVzdENvbW1hbmRfUElDS1'
    '9QSUVDRRAAEiYKIlBsYW5HYW1lUmVxdWVzdENvbW1hbmRfUExBQ0VfUElFQ0UQARIfChtQbGFu'
    'R2FtZVJlcXVlc3RDb21tYW5kX1VORE8QAhIfChtQbGFuR2FtZVJlcXVlc3RDb21tYW5kX1JFRE'
    '8QAxIgChxQbGFuR2FtZVJlcXVlc3RDb21tYW5kX1JFU0VUEGQSIQocUGxhbkdhbWVSZXF1ZXN0'
    'Q29tbWFuZF9SRUFEWRDIAQ==');

@$core.Deprecated('Use playGameRequestCommandDescriptor instead')
const PlayGameRequestCommand$json = {
  '1': 'PlayGameRequestCommand',
  '2': [
    {'1': 'PlayGameRequestCommand_PICK_PIECE', '2': 0},
    {'1': 'PlayGameRequestCommand_MOVE_PIECE', '2': 1},
    {'1': 'PlayGameRequestCommand_FOREFEIT', '2': 2},
  ],
};

/// Descriptor for `PlayGameRequestCommand`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List playGameRequestCommandDescriptor = $convert.base64Decode(
    'ChZQbGF5R2FtZVJlcXVlc3RDb21tYW5kEiUKIVBsYXlHYW1lUmVxdWVzdENvbW1hbmRfUElDS1'
    '9QSUVDRRAAEiUKIVBsYXlHYW1lUmVxdWVzdENvbW1hbmRfTU9WRV9QSUVDRRABEiMKH1BsYXlH'
    'YW1lUmVxdWVzdENvbW1hbmRfRk9SRUZFSVQQAg==');

@$core.Deprecated('Use longPingRequestDescriptor instead')
const LongPingRequest$json = {
  '1': 'LongPingRequest',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `LongPingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List longPingRequestDescriptor = $convert.base64Decode(
    'Cg9Mb25nUGluZ1JlcXVlc3QSGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use pongDescriptor instead')
const Pong$json = {
  '1': 'Pong',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'games', '3': 16, '4': 3, '5': 11, '6': '.stratego.v1.Game', '10': 'games'},
  ],
};

/// Descriptor for `Pong`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pongDescriptor = $convert.base64Decode(
    'CgRQb25nEjgKCXRpbWVzdGFtcBgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCX'
    'RpbWVzdGFtcBIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdlEicKBWdhbWVzGBAgAygLMhEuc3Ry'
    'YXRlZ28udjEuR2FtZVIFZ2FtZXM=');

@$core.Deprecated('Use gamePlayerDescriptor instead')
const GamePlayer$json = {
  '1': 'GamePlayer',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'color', '3': 2, '4': 1, '5': 14, '6': '.stratego.v1.PlayerColor', '10': 'color'},
  ],
};

/// Descriptor for `GamePlayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gamePlayerDescriptor = $convert.base64Decode(
    'CgpHYW1lUGxheWVyEg4KAmlkGAEgASgJUgJpZBIuCgVjb2xvchgCIAEoDjIYLnN0cmF0ZWdvLn'
    'YxLlBsYXllckNvbG9yUgVjb2xvcg==');

@$core.Deprecated('Use gameInfoDescriptor instead')
const GameInfo$json = {
  '1': 'GameInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.stratego.v1.GameState', '10': 'state'},
    {'1': 'player_ids', '3': 3, '4': 3, '5': 9, '10': 'playerIds'},
    {'1': 'nonce', '3': 4, '4': 1, '5': 13, '10': 'nonce'},
  ],
};

/// Descriptor for `GameInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameInfoDescriptor = $convert.base64Decode(
    'CghHYW1lSW5mbxIOCgJpZBgBIAEoCVICaWQSLAoFc3RhdGUYAiABKA4yFi5zdHJhdGVnby52MS'
    '5HYW1lU3RhdGVSBXN0YXRlEh0KCnBsYXllcl9pZHMYAyADKAlSCXBsYXllcklkcxIUCgVub25j'
    'ZRgEIAEoDVIFbm9uY2U=');

@$core.Deprecated('Use gameDescriptor instead')
const Game$json = {
  '1': 'Game',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.stratego.v1.GameState', '10': 'state'},
    {'1': 'player_ids', '3': 3, '4': 3, '5': 9, '10': 'playerIds'},
    {'1': 'nonce', '3': 4, '4': 1, '5': 13, '10': 'nonce'},
    {'1': 'board', '3': 5, '4': 1, '5': 11, '6': '.stratego.v1.Board', '10': 'board'},
  ],
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor = $convert.base64Decode(
    'CgRHYW1lEg4KAmlkGAEgASgJUgJpZBIsCgVzdGF0ZRgCIAEoDjIWLnN0cmF0ZWdvLnYxLkdhbW'
    'VTdGF0ZVIFc3RhdGUSHQoKcGxheWVyX2lkcxgDIAMoCVIJcGxheWVySWRzEhQKBW5vbmNlGAQg'
    'ASgNUgVub25jZRIoCgVib2FyZBgFIAEoCzISLnN0cmF0ZWdvLnYxLkJvYXJkUgVib2FyZA==');

@$core.Deprecated('Use newGameRequestDescriptor instead')
const NewGameRequest$json = {
  '1': 'NewGameRequest',
};

/// Descriptor for `NewGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newGameRequestDescriptor = $convert.base64Decode(
    'Cg5OZXdHYW1lUmVxdWVzdA==');

@$core.Deprecated('Use newGameResponseDescriptor instead')
const NewGameResponse$json = {
  '1': 'NewGameResponse',
  '2': [
    {'1': 'game', '3': 1, '4': 1, '5': 11, '6': '.stratego.v1.Game', '10': 'game'},
  ],
};

/// Descriptor for `NewGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newGameResponseDescriptor = $convert.base64Decode(
    'Cg9OZXdHYW1lUmVzcG9uc2USJQoEZ2FtZRgBIAEoCzIRLnN0cmF0ZWdvLnYxLkdhbWVSBGdhbW'
    'U=');

@$core.Deprecated('Use listGamesRequestDescriptor instead')
const ListGamesRequest$json = {
  '1': 'ListGamesRequest',
};

/// Descriptor for `ListGamesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGamesRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0R2FtZXNSZXF1ZXN0');

@$core.Deprecated('Use listGamesResponseDescriptor instead')
const ListGamesResponse$json = {
  '1': 'ListGamesResponse',
  '2': [
    {'1': 'games', '3': 1, '4': 3, '5': 11, '6': '.stratego.v1.GameInfo', '10': 'games'},
  ],
};

/// Descriptor for `ListGamesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGamesResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0R2FtZXNSZXNwb25zZRIrCgVnYW1lcxgBIAMoCzIVLnN0cmF0ZWdvLnYxLkdhbWVJbm'
    'ZvUgVnYW1lcw==');

@$core.Deprecated('Use getGameRequestDescriptor instead')
const GetGameRequest$json = {
  '1': 'GetGameRequest',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

/// Descriptor for `GetGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGameRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRHYW1lUmVxdWVzdBIWCgZnYW1lSWQYASABKAlSBmdhbWVJZA==');

@$core.Deprecated('Use getGameResponseDescriptor instead')
const GetGameResponse$json = {
  '1': 'GetGameResponse',
  '2': [
    {'1': 'game', '3': 1, '4': 1, '5': 11, '6': '.stratego.v1.Game', '10': 'game'},
  ],
};

/// Descriptor for `GetGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGameResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRHYW1lUmVzcG9uc2USJQoEZ2FtZRgBIAEoCzIRLnN0cmF0ZWdvLnYxLkdhbWVSBGdhbW'
    'U=');

@$core.Deprecated('Use historyDescriptor instead')
const History$json = {
  '1': 'History',
  '2': [
    {'1': 'mode', '3': 1, '4': 1, '5': 14, '6': '.stratego.v1.GameState', '10': 'mode'},
    {'1': 'selectedPieceId', '3': 2, '4': 1, '5': 9, '10': 'selectedPieceId'},
    {'1': 'to', '3': 3, '4': 1, '5': 11, '6': '.stratego.v1.Position', '10': 'to'},
    {'1': 'capturedPieceId', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'capturedPieceId', '17': true},
  ],
  '8': [
    {'1': '_capturedPieceId'},
  ],
};

/// Descriptor for `History`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyDescriptor = $convert.base64Decode(
    'CgdIaXN0b3J5EioKBG1vZGUYASABKA4yFi5zdHJhdGVnby52MS5HYW1lU3RhdGVSBG1vZGUSKA'
    'oPc2VsZWN0ZWRQaWVjZUlkGAIgASgJUg9zZWxlY3RlZFBpZWNlSWQSJQoCdG8YAyABKAsyFS5z'
    'dHJhdGVnby52MS5Qb3NpdGlvblICdG8SLQoPY2FwdHVyZWRQaWVjZUlkGAQgASgJSABSD2NhcH'
    'R1cmVkUGllY2VJZIgBAUISChBfY2FwdHVyZWRQaWVjZUlk');

@$core.Deprecated('Use attackEventDescriptor instead')
const AttackEvent$json = {
  '1': 'AttackEvent',
  '2': [
    {'1': 'attackerRank', '3': 1, '4': 1, '5': 5, '10': 'attackerRank'},
    {'1': 'attackeeRank', '3': 2, '4': 1, '5': 5, '10': 'attackeeRank'},
    {'1': 'result', '3': 3, '4': 1, '5': 14, '6': '.stratego.v1.AttackResult', '10': 'result'},
  ],
};

/// Descriptor for `AttackEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attackEventDescriptor = $convert.base64Decode(
    'CgtBdHRhY2tFdmVudBIiCgxhdHRhY2tlclJhbmsYASABKAVSDGF0dGFja2VyUmFuaxIiCgxhdH'
    'RhY2tlZVJhbmsYAiABKAVSDGF0dGFja2VlUmFuaxIxCgZyZXN1bHQYAyABKA4yGS5zdHJhdGVn'
    'by52MS5BdHRhY2tSZXN1bHRSBnJlc3VsdA==');

@$core.Deprecated('Use pieceMovedEventDescriptor instead')
const PieceMovedEvent$json = {
  '1': 'PieceMovedEvent',
  '2': [
    {'1': 'nonce', '3': 1, '4': 1, '5': 13, '10': 'nonce'},
    {'1': 'pieceId', '3': 2, '4': 1, '5': 9, '10': 'pieceId'},
    {'1': 'from', '3': 3, '4': 1, '5': 11, '6': '.stratego.v1.Position', '10': 'from'},
    {'1': 'to', '3': 4, '4': 1, '5': 11, '6': '.stratego.v1.Position', '10': 'to'},
    {'1': 'pieceAttacked', '3': 5, '4': 1, '5': 11, '6': '.stratego.v1.AttackEvent', '10': 'pieceAttacked'},
  ],
};

/// Descriptor for `PieceMovedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pieceMovedEventDescriptor = $convert.base64Decode(
    'Cg9QaWVjZU1vdmVkRXZlbnQSFAoFbm9uY2UYASABKA1SBW5vbmNlEhgKB3BpZWNlSWQYAiABKA'
    'lSB3BpZWNlSWQSKQoEZnJvbRgDIAEoCzIVLnN0cmF0ZWdvLnYxLlBvc2l0aW9uUgRmcm9tEiUK'
    'AnRvGAQgASgLMhUuc3RyYXRlZ28udjEuUG9zaXRpb25SAnRvEj4KDXBpZWNlQXR0YWNrZWQYBS'
    'ABKAsyGC5zdHJhdGVnby52MS5BdHRhY2tFdmVudFINcGllY2VBdHRhY2tlZA==');

@$core.Deprecated('Use planGameRequestDescriptor instead')
const PlanGameRequest$json = {
  '1': 'PlanGameRequest',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
    {'1': 'command', '3': 2, '4': 1, '5': 14, '6': '.stratego.v1.PlanGameRequestCommand', '10': 'command'},
    {'1': 'selectedPieceId', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'selectedPieceId', '17': true},
    {'1': 'selectedPosition', '3': 4, '4': 1, '5': 11, '6': '.stratego.v1.Position', '9': 1, '10': 'selectedPosition', '17': true},
  ],
  '8': [
    {'1': '_selectedPieceId'},
    {'1': '_selectedPosition'},
  ],
};

/// Descriptor for `PlanGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List planGameRequestDescriptor = $convert.base64Decode(
    'Cg9QbGFuR2FtZVJlcXVlc3QSFgoGZ2FtZUlkGAEgASgJUgZnYW1lSWQSPQoHY29tbWFuZBgCIA'
    'EoDjIjLnN0cmF0ZWdvLnYxLlBsYW5HYW1lUmVxdWVzdENvbW1hbmRSB2NvbW1hbmQSLQoPc2Vs'
    'ZWN0ZWRQaWVjZUlkGAMgASgJSABSD3NlbGVjdGVkUGllY2VJZIgBARJGChBzZWxlY3RlZFBvc2'
    'l0aW9uGAQgASgLMhUuc3RyYXRlZ28udjEuUG9zaXRpb25IAVIQc2VsZWN0ZWRQb3NpdGlvbogB'
    'AUISChBfc2VsZWN0ZWRQaWVjZUlkQhMKEV9zZWxlY3RlZFBvc2l0aW9u');

@$core.Deprecated('Use planGameResponseDescriptor instead')
const PlanGameResponse$json = {
  '1': 'PlanGameResponse',
  '2': [
    {'1': 'nonce', '3': 1, '4': 1, '5': 13, '10': 'nonce'},
    {'1': 'validPlacements', '3': 2, '4': 3, '5': 11, '6': '.stratego.v1.Position', '10': 'validPlacements'},
    {'1': 'history', '3': 3, '4': 3, '5': 11, '6': '.stratego.v1.History', '10': 'history'},
    {'1': 'error', '3': 16, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `PlanGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List planGameResponseDescriptor = $convert.base64Decode(
    'ChBQbGFuR2FtZVJlc3BvbnNlEhQKBW5vbmNlGAEgASgNUgVub25jZRI/Cg92YWxpZFBsYWNlbW'
    'VudHMYAiADKAsyFS5zdHJhdGVnby52MS5Qb3NpdGlvblIPdmFsaWRQbGFjZW1lbnRzEi4KB2hp'
    'c3RvcnkYAyADKAsyFC5zdHJhdGVnby52MS5IaXN0b3J5UgdoaXN0b3J5EhQKBWVycm9yGBAgAS'
    'gJUgVlcnJvcg==');

@$core.Deprecated('Use playGameRequestDescriptor instead')
const PlayGameRequest$json = {
  '1': 'PlayGameRequest',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
    {'1': 'command', '3': 2, '4': 1, '5': 14, '6': '.stratego.v1.PlayGameRequestCommand', '10': 'command'},
    {'1': 'selectedPiecePosition', '3': 3, '4': 1, '5': 11, '6': '.stratego.v1.Position', '9': 0, '10': 'selectedPiecePosition', '17': true},
    {'1': 'selectedPlacement', '3': 4, '4': 1, '5': 11, '6': '.stratego.v1.Position', '9': 1, '10': 'selectedPlacement', '17': true},
  ],
  '8': [
    {'1': '_selectedPiecePosition'},
    {'1': '_selectedPlacement'},
  ],
};

/// Descriptor for `PlayGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playGameRequestDescriptor = $convert.base64Decode(
    'Cg9QbGF5R2FtZVJlcXVlc3QSFgoGZ2FtZUlkGAEgASgJUgZnYW1lSWQSPQoHY29tbWFuZBgCIA'
    'EoDjIjLnN0cmF0ZWdvLnYxLlBsYXlHYW1lUmVxdWVzdENvbW1hbmRSB2NvbW1hbmQSUAoVc2Vs'
    'ZWN0ZWRQaWVjZVBvc2l0aW9uGAMgASgLMhUuc3RyYXRlZ28udjEuUG9zaXRpb25IAFIVc2VsZW'
    'N0ZWRQaWVjZVBvc2l0aW9uiAEBEkgKEXNlbGVjdGVkUGxhY2VtZW50GAQgASgLMhUuc3RyYXRl'
    'Z28udjEuUG9zaXRpb25IAVIRc2VsZWN0ZWRQbGFjZW1lbnSIAQFCGAoWX3NlbGVjdGVkUGllY2'
    'VQb3NpdGlvbkIUChJfc2VsZWN0ZWRQbGFjZW1lbnQ=');

@$core.Deprecated('Use playGameResponseDescriptor instead')
const PlayGameResponse$json = {
  '1': 'PlayGameResponse',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
    {'1': 'redPlayerActive', '3': 2, '4': 1, '5': 8, '10': 'redPlayerActive'},
    {'1': 'validPlacements', '3': 3, '4': 3, '5': 11, '6': '.stratego.v1.Position', '10': 'validPlacements'},
    {'1': 'pieceMoved', '3': 4, '4': 1, '5': 11, '6': '.stratego.v1.PieceMovedEvent', '10': 'pieceMoved'},
    {'1': 'error', '3': 16, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `PlayGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playGameResponseDescriptor = $convert.base64Decode(
    'ChBQbGF5R2FtZVJlc3BvbnNlEhYKBmdhbWVJZBgBIAEoCVIGZ2FtZUlkEigKD3JlZFBsYXllck'
    'FjdGl2ZRgCIAEoCFIPcmVkUGxheWVyQWN0aXZlEj8KD3ZhbGlkUGxhY2VtZW50cxgDIAMoCzIV'
    'LnN0cmF0ZWdvLnYxLlBvc2l0aW9uUg92YWxpZFBsYWNlbWVudHMSPAoKcGllY2VNb3ZlZBgEIA'
    'EoCzIcLnN0cmF0ZWdvLnYxLlBpZWNlTW92ZWRFdmVudFIKcGllY2VNb3ZlZBIUCgVlcnJvchgQ'
    'IAEoCVIFZXJyb3I=');

@$core.Deprecated('Use playGameWebResponseDescriptor instead')
const PlayGameWebResponse$json = {
  '1': 'PlayGameWebResponse',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    {'1': 'validPlacements', '3': 3, '4': 3, '5': 11, '6': '.stratego.v1.Position', '10': 'validPlacements'},
  ],
};

/// Descriptor for `PlayGameWebResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playGameWebResponseDescriptor = $convert.base64Decode(
    'ChNQbGF5R2FtZVdlYlJlc3BvbnNlEhYKBmdhbWVJZBgBIAEoCVIGZ2FtZUlkEhQKBWVycm9yGA'
    'IgASgJUgVlcnJvchI/Cg92YWxpZFBsYWNlbWVudHMYAyADKAsyFS5zdHJhdGVnby52MS5Qb3Np'
    'dGlvblIPdmFsaWRQbGFjZW1lbnRz');

@$core.Deprecated('Use playGameWebListenerRequestDescriptor instead')
const PlayGameWebListenerRequest$json = {
  '1': 'PlayGameWebListenerRequest',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

/// Descriptor for `PlayGameWebListenerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playGameWebListenerRequestDescriptor = $convert.base64Decode(
    'ChpQbGF5R2FtZVdlYkxpc3RlbmVyUmVxdWVzdBIWCgZnYW1lSWQYASABKAlSBmdhbWVJZA==');

@$core.Deprecated('Use positionDescriptor instead')
const Position$json = {
  '1': 'Position',
  '2': [
    {'1': 'row', '3': 1, '4': 1, '5': 13, '10': 'row'},
    {'1': 'column', '3': 2, '4': 1, '5': 13, '10': 'column'},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode(
    'CghQb3NpdGlvbhIQCgNyb3cYASABKA1SA3JvdxIWCgZjb2x1bW4YAiABKA1SBmNvbHVtbg==');

@$core.Deprecated('Use pieceDescriptor instead')
const Piece$json = {
  '1': 'Piece',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'rank', '3': 2, '4': 1, '5': 13, '10': 'rank'},
    {'1': 'player', '3': 3, '4': 1, '5': 11, '6': '.stratego.v1.GamePlayer', '10': 'player'},
  ],
};

/// Descriptor for `Piece`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pieceDescriptor = $convert.base64Decode(
    'CgVQaWVjZRIOCgJpZBgBIAEoCVICaWQSEgoEcmFuaxgCIAEoDVIEcmFuaxIvCgZwbGF5ZXIYAy'
    'ABKAsyFy5zdHJhdGVnby52MS5HYW1lUGxheWVyUgZwbGF5ZXI=');

@$core.Deprecated('Use squareDescriptor instead')
const Square$json = {
  '1': 'Square',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'piece', '3': 2, '4': 1, '5': 11, '6': '.stratego.v1.Piece', '9': 0, '10': 'piece', '17': true},
    {'1': 'playable', '3': 3, '4': 1, '5': 8, '10': 'playable'},
  ],
  '8': [
    {'1': '_piece'},
  ],
};

/// Descriptor for `Square`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List squareDescriptor = $convert.base64Decode(
    'CgZTcXVhcmUSDgoCaWQYASABKAlSAmlkEi0KBXBpZWNlGAIgASgLMhIuc3RyYXRlZ28udjEuUG'
    'llY2VIAFIFcGllY2WIAQESGgoIcGxheWFibGUYAyABKAhSCHBsYXlhYmxlQggKBl9waWVjZQ==');

@$core.Deprecated('Use boardDescriptor instead')
const Board$json = {
  '1': 'Board',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'num_rows', '3': 2, '4': 1, '5': 13, '10': 'numRows'},
    {'1': 'num_columns', '3': 3, '4': 1, '5': 13, '10': 'numColumns'},
    {'1': 'rows', '3': 4, '4': 3, '5': 11, '6': '.stratego.v1.Row', '10': 'rows'},
  ],
};

/// Descriptor for `Board`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boardDescriptor = $convert.base64Decode(
    'CgVCb2FyZBIOCgJpZBgBIAEoCVICaWQSGQoIbnVtX3Jvd3MYAiABKA1SB251bVJvd3MSHwoLbn'
    'VtX2NvbHVtbnMYAyABKA1SCm51bUNvbHVtbnMSJAoEcm93cxgEIAMoCzIQLnN0cmF0ZWdvLnYx'
    'LlJvd1IEcm93cw==');

@$core.Deprecated('Use rowDescriptor instead')
const Row$json = {
  '1': 'Row',
  '2': [
    {'1': 'columns', '3': 1, '4': 3, '5': 11, '6': '.stratego.v1.Square', '10': 'columns'},
  ],
};

/// Descriptor for `Row`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rowDescriptor = $convert.base64Decode(
    'CgNSb3cSLQoHY29sdW1ucxgBIAMoCzITLnN0cmF0ZWdvLnYxLlNxdWFyZVIHY29sdW1ucw==');

