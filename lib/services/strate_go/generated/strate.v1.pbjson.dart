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

@$core.Deprecated('Use gameDescriptor instead')
const Game$json = {
  '1': 'Game',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.stratego.v1.GameState', '10': 'state'},
    {'1': 'player_ids', '3': 3, '4': 3, '5': 9, '10': 'playerIds'},
    {'1': 'board', '3': 4, '4': 1, '5': 11, '6': '.stratego.v1.Board', '10': 'board'},
  ],
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor = $convert.base64Decode(
    'CgRHYW1lEg4KAmlkGAEgASgJUgJpZBIsCgVzdGF0ZRgCIAEoDjIWLnN0cmF0ZWdvLnYxLkdhbW'
    'VTdGF0ZVIFc3RhdGUSHQoKcGxheWVyX2lkcxgDIAMoCVIJcGxheWVySWRzEigKBWJvYXJkGAQg'
    'ASgLMhIuc3RyYXRlZ28udjEuQm9hcmRSBWJvYXJk');

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

