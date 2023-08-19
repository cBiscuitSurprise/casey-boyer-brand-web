//
//  Generated code. Do not modify.
//  source: strate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

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
    {'1': 'games', '3': 16, '4': 3, '5': 11, '6': '.stratego.Game', '10': 'games'},
  ],
};

/// Descriptor for `Pong`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pongDescriptor = $convert.base64Decode(
    'CgRQb25nEjgKCXRpbWVzdGFtcBgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCX'
    'RpbWVzdGFtcBIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdlEiQKBWdhbWVzGBAgAygLMg4uc3Ry'
    'YXRlZ28uR2FtZVIFZ2FtZXM=');

@$core.Deprecated('Use gameDescriptor instead')
const Game$json = {
  '1': 'Game',
  '2': [
    {'1': 'players', '3': 1, '4': 3, '5': 9, '10': 'players'},
  ],
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor = $convert.base64Decode(
    'CgRHYW1lEhgKB3BsYXllcnMYASADKAlSB3BsYXllcnM=');

