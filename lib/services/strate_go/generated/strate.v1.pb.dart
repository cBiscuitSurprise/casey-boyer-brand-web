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

import 'google/protobuf/timestamp.pb.dart' as $2;
import 'strate.v1.pbenum.dart';

export 'strate.v1.pbenum.dart';

/// #region Health
class LongPingRequest extends $pb.GeneratedMessage {
  factory LongPingRequest({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  LongPingRequest._() : super();
  factory LongPingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LongPingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LongPingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LongPingRequest clone() => LongPingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LongPingRequest copyWith(void Function(LongPingRequest) updates) => super.copyWith((message) => updates(message as LongPingRequest)) as LongPingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LongPingRequest create() => LongPingRequest._();
  LongPingRequest createEmptyInstance() => create();
  static $pb.PbList<LongPingRequest> createRepeated() => $pb.PbList<LongPingRequest>();
  @$core.pragma('dart2js:noInline')
  static LongPingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LongPingRequest>(create);
  static LongPingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class Pong extends $pb.GeneratedMessage {
  factory Pong({
    $2.Timestamp? timestamp,
    $core.String? message,
    $core.Iterable<Game>? games,
  }) {
    final $result = create();
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (message != null) {
      $result.message = message;
    }
    if (games != null) {
      $result.games.addAll(games);
    }
    return $result;
  }
  Pong._() : super();
  factory Pong.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pong.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Pong', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOM<$2.Timestamp>(1, _omitFieldNames ? '' : 'timestamp', subBuilder: $2.Timestamp.create)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..pc<Game>(16, _omitFieldNames ? '' : 'games', $pb.PbFieldType.PM, subBuilder: Game.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pong clone() => Pong()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pong copyWith(void Function(Pong) updates) => super.copyWith((message) => updates(message as Pong)) as Pong;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pong create() => Pong._();
  Pong createEmptyInstance() => create();
  static $pb.PbList<Pong> createRepeated() => $pb.PbList<Pong>();
  @$core.pragma('dart2js:noInline')
  static Pong getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pong>(create);
  static Pong? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Timestamp get timestamp => $_getN(0);
  @$pb.TagNumber(1)
  set timestamp($2.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);
  @$pb.TagNumber(1)
  $2.Timestamp ensureTimestamp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(16)
  $core.List<Game> get games => $_getList(2);
}

class GamePlayer extends $pb.GeneratedMessage {
  factory GamePlayer({
    $core.String? id,
    PlayerColor? color,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (color != null) {
      $result.color = color;
    }
    return $result;
  }
  GamePlayer._() : super();
  factory GamePlayer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GamePlayer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GamePlayer', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<PlayerColor>(2, _omitFieldNames ? '' : 'color', $pb.PbFieldType.OE, defaultOrMaker: PlayerColor.PlayerColor_RED, valueOf: PlayerColor.valueOf, enumValues: PlayerColor.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GamePlayer clone() => GamePlayer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GamePlayer copyWith(void Function(GamePlayer) updates) => super.copyWith((message) => updates(message as GamePlayer)) as GamePlayer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GamePlayer create() => GamePlayer._();
  GamePlayer createEmptyInstance() => create();
  static $pb.PbList<GamePlayer> createRepeated() => $pb.PbList<GamePlayer>();
  @$core.pragma('dart2js:noInline')
  static GamePlayer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GamePlayer>(create);
  static GamePlayer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  PlayerColor get color => $_getN(1);
  @$pb.TagNumber(2)
  set color(PlayerColor v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);
}

class GameInfo extends $pb.GeneratedMessage {
  factory GameInfo({
    $core.String? id,
    GameState? state,
    $core.Iterable<$core.String>? playerIds,
    $core.int? nonce,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (state != null) {
      $result.state = state;
    }
    if (playerIds != null) {
      $result.playerIds.addAll(playerIds);
    }
    if (nonce != null) {
      $result.nonce = nonce;
    }
    return $result;
  }
  GameInfo._() : super();
  factory GameInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<GameState>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: GameState.GameState_SETUP, valueOf: GameState.valueOf, enumValues: GameState.values)
    ..pPS(3, _omitFieldNames ? '' : 'playerIds')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameInfo clone() => GameInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameInfo copyWith(void Function(GameInfo) updates) => super.copyWith((message) => updates(message as GameInfo)) as GameInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameInfo create() => GameInfo._();
  GameInfo createEmptyInstance() => create();
  static $pb.PbList<GameInfo> createRepeated() => $pb.PbList<GameInfo>();
  @$core.pragma('dart2js:noInline')
  static GameInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameInfo>(create);
  static GameInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  GameState get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(GameState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get playerIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get nonce => $_getIZ(3);
  @$pb.TagNumber(4)
  set nonce($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNonce() => $_has(3);
  @$pb.TagNumber(4)
  void clearNonce() => clearField(4);
}

class Game extends $pb.GeneratedMessage {
  factory Game({
    $core.String? id,
    GameState? state,
    $core.Iterable<$core.String>? playerIds,
    $core.int? nonce,
    Board? board,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (state != null) {
      $result.state = state;
    }
    if (playerIds != null) {
      $result.playerIds.addAll(playerIds);
    }
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (board != null) {
      $result.board = board;
    }
    return $result;
  }
  Game._() : super();
  factory Game.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Game.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Game', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<GameState>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: GameState.GameState_SETUP, valueOf: GameState.valueOf, enumValues: GameState.values)
    ..pPS(3, _omitFieldNames ? '' : 'playerIds')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OU3)
    ..aOM<Board>(5, _omitFieldNames ? '' : 'board', subBuilder: Board.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Game clone() => Game()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Game copyWith(void Function(Game) updates) => super.copyWith((message) => updates(message as Game)) as Game;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Game create() => Game._();
  Game createEmptyInstance() => create();
  static $pb.PbList<Game> createRepeated() => $pb.PbList<Game>();
  @$core.pragma('dart2js:noInline')
  static Game getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Game>(create);
  static Game? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  GameState get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(GameState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get playerIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get nonce => $_getIZ(3);
  @$pb.TagNumber(4)
  set nonce($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNonce() => $_has(3);
  @$pb.TagNumber(4)
  void clearNonce() => clearField(4);

  @$pb.TagNumber(5)
  Board get board => $_getN(4);
  @$pb.TagNumber(5)
  set board(Board v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBoard() => $_has(4);
  @$pb.TagNumber(5)
  void clearBoard() => clearField(5);
  @$pb.TagNumber(5)
  Board ensureBoard() => $_ensure(4);
}

class NewGameRequest extends $pb.GeneratedMessage {
  factory NewGameRequest() => create();
  NewGameRequest._() : super();
  factory NewGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewGameRequest clone() => NewGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewGameRequest copyWith(void Function(NewGameRequest) updates) => super.copyWith((message) => updates(message as NewGameRequest)) as NewGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewGameRequest create() => NewGameRequest._();
  NewGameRequest createEmptyInstance() => create();
  static $pb.PbList<NewGameRequest> createRepeated() => $pb.PbList<NewGameRequest>();
  @$core.pragma('dart2js:noInline')
  static NewGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewGameRequest>(create);
  static NewGameRequest? _defaultInstance;
}

class NewGameResponse extends $pb.GeneratedMessage {
  factory NewGameResponse({
    Game? game,
  }) {
    final $result = create();
    if (game != null) {
      $result.game = game;
    }
    return $result;
  }
  NewGameResponse._() : super();
  factory NewGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewGameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOM<Game>(1, _omitFieldNames ? '' : 'game', subBuilder: Game.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewGameResponse clone() => NewGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewGameResponse copyWith(void Function(NewGameResponse) updates) => super.copyWith((message) => updates(message as NewGameResponse)) as NewGameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewGameResponse create() => NewGameResponse._();
  NewGameResponse createEmptyInstance() => create();
  static $pb.PbList<NewGameResponse> createRepeated() => $pb.PbList<NewGameResponse>();
  @$core.pragma('dart2js:noInline')
  static NewGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewGameResponse>(create);
  static NewGameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Game get game => $_getN(0);
  @$pb.TagNumber(1)
  set game(Game v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGame() => $_has(0);
  @$pb.TagNumber(1)
  void clearGame() => clearField(1);
  @$pb.TagNumber(1)
  Game ensureGame() => $_ensure(0);
}

class ListGamesRequest extends $pb.GeneratedMessage {
  factory ListGamesRequest() => create();
  ListGamesRequest._() : super();
  factory ListGamesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGamesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListGamesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGamesRequest clone() => ListGamesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGamesRequest copyWith(void Function(ListGamesRequest) updates) => super.copyWith((message) => updates(message as ListGamesRequest)) as ListGamesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGamesRequest create() => ListGamesRequest._();
  ListGamesRequest createEmptyInstance() => create();
  static $pb.PbList<ListGamesRequest> createRepeated() => $pb.PbList<ListGamesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListGamesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGamesRequest>(create);
  static ListGamesRequest? _defaultInstance;
}

class ListGamesResponse extends $pb.GeneratedMessage {
  factory ListGamesResponse({
    $core.Iterable<GameInfo>? games,
  }) {
    final $result = create();
    if (games != null) {
      $result.games.addAll(games);
    }
    return $result;
  }
  ListGamesResponse._() : super();
  factory ListGamesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGamesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListGamesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..pc<GameInfo>(1, _omitFieldNames ? '' : 'games', $pb.PbFieldType.PM, subBuilder: GameInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGamesResponse clone() => ListGamesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGamesResponse copyWith(void Function(ListGamesResponse) updates) => super.copyWith((message) => updates(message as ListGamesResponse)) as ListGamesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGamesResponse create() => ListGamesResponse._();
  ListGamesResponse createEmptyInstance() => create();
  static $pb.PbList<ListGamesResponse> createRepeated() => $pb.PbList<ListGamesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListGamesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGamesResponse>(create);
  static ListGamesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GameInfo> get games => $_getList(0);
}

class GetGameRequest extends $pb.GeneratedMessage {
  factory GetGameRequest({
    $core.String? gameId,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    return $result;
  }
  GetGameRequest._() : super();
  factory GetGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameId', protoName: 'gameId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGameRequest clone() => GetGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGameRequest copyWith(void Function(GetGameRequest) updates) => super.copyWith((message) => updates(message as GetGameRequest)) as GetGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGameRequest create() => GetGameRequest._();
  GetGameRequest createEmptyInstance() => create();
  static $pb.PbList<GetGameRequest> createRepeated() => $pb.PbList<GetGameRequest>();
  @$core.pragma('dart2js:noInline')
  static GetGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGameRequest>(create);
  static GetGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

class GetGameResponse extends $pb.GeneratedMessage {
  factory GetGameResponse({
    Game? game,
  }) {
    final $result = create();
    if (game != null) {
      $result.game = game;
    }
    return $result;
  }
  GetGameResponse._() : super();
  factory GetGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOM<Game>(1, _omitFieldNames ? '' : 'game', subBuilder: Game.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGameResponse clone() => GetGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGameResponse copyWith(void Function(GetGameResponse) updates) => super.copyWith((message) => updates(message as GetGameResponse)) as GetGameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGameResponse create() => GetGameResponse._();
  GetGameResponse createEmptyInstance() => create();
  static $pb.PbList<GetGameResponse> createRepeated() => $pb.PbList<GetGameResponse>();
  @$core.pragma('dart2js:noInline')
  static GetGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGameResponse>(create);
  static GetGameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Game get game => $_getN(0);
  @$pb.TagNumber(1)
  set game(Game v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGame() => $_has(0);
  @$pb.TagNumber(1)
  void clearGame() => clearField(1);
  @$pb.TagNumber(1)
  Game ensureGame() => $_ensure(0);
}

class History extends $pb.GeneratedMessage {
  factory History({
    GameState? mode,
    $core.String? selectedPieceId,
    Position? to,
    $core.String? capturedPieceId,
  }) {
    final $result = create();
    if (mode != null) {
      $result.mode = mode;
    }
    if (selectedPieceId != null) {
      $result.selectedPieceId = selectedPieceId;
    }
    if (to != null) {
      $result.to = to;
    }
    if (capturedPieceId != null) {
      $result.capturedPieceId = capturedPieceId;
    }
    return $result;
  }
  History._() : super();
  factory History.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory History.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'History', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..e<GameState>(1, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: GameState.GameState_SETUP, valueOf: GameState.valueOf, enumValues: GameState.values)
    ..aOS(2, _omitFieldNames ? '' : 'selectedPieceId', protoName: 'selectedPieceId')
    ..aOM<Position>(3, _omitFieldNames ? '' : 'to', subBuilder: Position.create)
    ..aOS(4, _omitFieldNames ? '' : 'capturedPieceId', protoName: 'capturedPieceId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  History clone() => History()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  History copyWith(void Function(History) updates) => super.copyWith((message) => updates(message as History)) as History;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static History create() => History._();
  History createEmptyInstance() => create();
  static $pb.PbList<History> createRepeated() => $pb.PbList<History>();
  @$core.pragma('dart2js:noInline')
  static History getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<History>(create);
  static History? _defaultInstance;

  @$pb.TagNumber(1)
  GameState get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(GameState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get selectedPieceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set selectedPieceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSelectedPieceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelectedPieceId() => clearField(2);

  @$pb.TagNumber(3)
  Position get to => $_getN(2);
  @$pb.TagNumber(3)
  set to(Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => clearField(3);
  @$pb.TagNumber(3)
  Position ensureTo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get capturedPieceId => $_getSZ(3);
  @$pb.TagNumber(4)
  set capturedPieceId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCapturedPieceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCapturedPieceId() => clearField(4);
}

class AttackEvent extends $pb.GeneratedMessage {
  factory AttackEvent({
    $core.int? attackerRank,
    $core.int? attackeeRank,
    AttackResult? result,
  }) {
    final $result = create();
    if (attackerRank != null) {
      $result.attackerRank = attackerRank;
    }
    if (attackeeRank != null) {
      $result.attackeeRank = attackeeRank;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  AttackEvent._() : super();
  factory AttackEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttackEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttackEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'attackerRank', $pb.PbFieldType.O3, protoName: 'attackerRank')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'attackeeRank', $pb.PbFieldType.O3, protoName: 'attackeeRank')
    ..e<AttackResult>(3, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: AttackResult.AttackResult_NO_CONTEST, valueOf: AttackResult.valueOf, enumValues: AttackResult.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AttackEvent clone() => AttackEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AttackEvent copyWith(void Function(AttackEvent) updates) => super.copyWith((message) => updates(message as AttackEvent)) as AttackEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttackEvent create() => AttackEvent._();
  AttackEvent createEmptyInstance() => create();
  static $pb.PbList<AttackEvent> createRepeated() => $pb.PbList<AttackEvent>();
  @$core.pragma('dart2js:noInline')
  static AttackEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttackEvent>(create);
  static AttackEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get attackerRank => $_getIZ(0);
  @$pb.TagNumber(1)
  set attackerRank($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttackerRank() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttackerRank() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get attackeeRank => $_getIZ(1);
  @$pb.TagNumber(2)
  set attackeeRank($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAttackeeRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearAttackeeRank() => clearField(2);

  @$pb.TagNumber(3)
  AttackResult get result => $_getN(2);
  @$pb.TagNumber(3)
  set result(AttackResult v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearResult() => clearField(3);
}

class PieceMovedEvent extends $pb.GeneratedMessage {
  factory PieceMovedEvent({
    $core.int? nonce,
    $core.String? pieceId,
    Position? from,
    Position? to,
    AttackEvent? pieceAttacked,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (pieceId != null) {
      $result.pieceId = pieceId;
    }
    if (from != null) {
      $result.from = from;
    }
    if (to != null) {
      $result.to = to;
    }
    if (pieceAttacked != null) {
      $result.pieceAttacked = pieceAttacked;
    }
    return $result;
  }
  PieceMovedEvent._() : super();
  factory PieceMovedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PieceMovedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PieceMovedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'pieceId', protoName: 'pieceId')
    ..aOM<Position>(3, _omitFieldNames ? '' : 'from', subBuilder: Position.create)
    ..aOM<Position>(4, _omitFieldNames ? '' : 'to', subBuilder: Position.create)
    ..aOM<AttackEvent>(5, _omitFieldNames ? '' : 'pieceAttacked', protoName: 'pieceAttacked', subBuilder: AttackEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PieceMovedEvent clone() => PieceMovedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PieceMovedEvent copyWith(void Function(PieceMovedEvent) updates) => super.copyWith((message) => updates(message as PieceMovedEvent)) as PieceMovedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PieceMovedEvent create() => PieceMovedEvent._();
  PieceMovedEvent createEmptyInstance() => create();
  static $pb.PbList<PieceMovedEvent> createRepeated() => $pb.PbList<PieceMovedEvent>();
  @$core.pragma('dart2js:noInline')
  static PieceMovedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PieceMovedEvent>(create);
  static PieceMovedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nonce => $_getIZ(0);
  @$pb.TagNumber(1)
  set nonce($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pieceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set pieceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPieceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPieceId() => clearField(2);

  @$pb.TagNumber(3)
  Position get from => $_getN(2);
  @$pb.TagNumber(3)
  set from(Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);
  @$pb.TagNumber(3)
  Position ensureFrom() => $_ensure(2);

  @$pb.TagNumber(4)
  Position get to => $_getN(3);
  @$pb.TagNumber(4)
  set to(Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => clearField(4);
  @$pb.TagNumber(4)
  Position ensureTo() => $_ensure(3);

  @$pb.TagNumber(5)
  AttackEvent get pieceAttacked => $_getN(4);
  @$pb.TagNumber(5)
  set pieceAttacked(AttackEvent v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPieceAttacked() => $_has(4);
  @$pb.TagNumber(5)
  void clearPieceAttacked() => clearField(5);
  @$pb.TagNumber(5)
  AttackEvent ensurePieceAttacked() => $_ensure(4);
}

class PlanGameRequest extends $pb.GeneratedMessage {
  factory PlanGameRequest({
    $core.String? gameId,
    PlanGameRequestCommand? command,
    $core.String? selectedPieceId,
    Position? selectedPosition,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    if (command != null) {
      $result.command = command;
    }
    if (selectedPieceId != null) {
      $result.selectedPieceId = selectedPieceId;
    }
    if (selectedPosition != null) {
      $result.selectedPosition = selectedPosition;
    }
    return $result;
  }
  PlanGameRequest._() : super();
  factory PlanGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlanGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlanGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameId', protoName: 'gameId')
    ..e<PlanGameRequestCommand>(2, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OE, defaultOrMaker: PlanGameRequestCommand.PlanGameRequestCommand_PICK_PIECE, valueOf: PlanGameRequestCommand.valueOf, enumValues: PlanGameRequestCommand.values)
    ..aOS(3, _omitFieldNames ? '' : 'selectedPieceId', protoName: 'selectedPieceId')
    ..aOM<Position>(4, _omitFieldNames ? '' : 'selectedPosition', protoName: 'selectedPosition', subBuilder: Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlanGameRequest clone() => PlanGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlanGameRequest copyWith(void Function(PlanGameRequest) updates) => super.copyWith((message) => updates(message as PlanGameRequest)) as PlanGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlanGameRequest create() => PlanGameRequest._();
  PlanGameRequest createEmptyInstance() => create();
  static $pb.PbList<PlanGameRequest> createRepeated() => $pb.PbList<PlanGameRequest>();
  @$core.pragma('dart2js:noInline')
  static PlanGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlanGameRequest>(create);
  static PlanGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);

  @$pb.TagNumber(2)
  PlanGameRequestCommand get command => $_getN(1);
  @$pb.TagNumber(2)
  set command(PlanGameRequestCommand v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommand() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get selectedPieceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set selectedPieceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSelectedPieceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelectedPieceId() => clearField(3);

  @$pb.TagNumber(4)
  Position get selectedPosition => $_getN(3);
  @$pb.TagNumber(4)
  set selectedPosition(Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSelectedPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearSelectedPosition() => clearField(4);
  @$pb.TagNumber(4)
  Position ensureSelectedPosition() => $_ensure(3);
}

class PlanGameResponse extends $pb.GeneratedMessage {
  factory PlanGameResponse({
    $core.int? nonce,
    $core.Iterable<Position>? validPlacements,
    $core.Iterable<History>? history,
    $core.String? error,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (validPlacements != null) {
      $result.validPlacements.addAll(validPlacements);
    }
    if (history != null) {
      $result.history.addAll(history);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  PlanGameResponse._() : super();
  factory PlanGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlanGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlanGameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OU3)
    ..pc<Position>(2, _omitFieldNames ? '' : 'validPlacements', $pb.PbFieldType.PM, protoName: 'validPlacements', subBuilder: Position.create)
    ..pc<History>(3, _omitFieldNames ? '' : 'history', $pb.PbFieldType.PM, subBuilder: History.create)
    ..aOS(16, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlanGameResponse clone() => PlanGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlanGameResponse copyWith(void Function(PlanGameResponse) updates) => super.copyWith((message) => updates(message as PlanGameResponse)) as PlanGameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlanGameResponse create() => PlanGameResponse._();
  PlanGameResponse createEmptyInstance() => create();
  static $pb.PbList<PlanGameResponse> createRepeated() => $pb.PbList<PlanGameResponse>();
  @$core.pragma('dart2js:noInline')
  static PlanGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlanGameResponse>(create);
  static PlanGameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nonce => $_getIZ(0);
  @$pb.TagNumber(1)
  set nonce($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Position> get validPlacements => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<History> get history => $_getList(2);

  @$pb.TagNumber(16)
  $core.String get error => $_getSZ(3);
  @$pb.TagNumber(16)
  set error($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(16)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(16)
  void clearError() => clearField(16);
}

class PlayGameRequest extends $pb.GeneratedMessage {
  factory PlayGameRequest({
    $core.String? gameId,
    PlayGameRequestCommand? command,
    Position? selectedPiecePosition,
    Position? selectedPlacement,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    if (command != null) {
      $result.command = command;
    }
    if (selectedPiecePosition != null) {
      $result.selectedPiecePosition = selectedPiecePosition;
    }
    if (selectedPlacement != null) {
      $result.selectedPlacement = selectedPlacement;
    }
    return $result;
  }
  PlayGameRequest._() : super();
  factory PlayGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameId', protoName: 'gameId')
    ..e<PlayGameRequestCommand>(2, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OE, defaultOrMaker: PlayGameRequestCommand.PlayGameRequestCommand_PICK_PIECE, valueOf: PlayGameRequestCommand.valueOf, enumValues: PlayGameRequestCommand.values)
    ..aOM<Position>(3, _omitFieldNames ? '' : 'selectedPiecePosition', protoName: 'selectedPiecePosition', subBuilder: Position.create)
    ..aOM<Position>(4, _omitFieldNames ? '' : 'selectedPlacement', protoName: 'selectedPlacement', subBuilder: Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayGameRequest clone() => PlayGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayGameRequest copyWith(void Function(PlayGameRequest) updates) => super.copyWith((message) => updates(message as PlayGameRequest)) as PlayGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayGameRequest create() => PlayGameRequest._();
  PlayGameRequest createEmptyInstance() => create();
  static $pb.PbList<PlayGameRequest> createRepeated() => $pb.PbList<PlayGameRequest>();
  @$core.pragma('dart2js:noInline')
  static PlayGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayGameRequest>(create);
  static PlayGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);

  @$pb.TagNumber(2)
  PlayGameRequestCommand get command => $_getN(1);
  @$pb.TagNumber(2)
  set command(PlayGameRequestCommand v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommand() => clearField(2);

  @$pb.TagNumber(3)
  Position get selectedPiecePosition => $_getN(2);
  @$pb.TagNumber(3)
  set selectedPiecePosition(Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSelectedPiecePosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelectedPiecePosition() => clearField(3);
  @$pb.TagNumber(3)
  Position ensureSelectedPiecePosition() => $_ensure(2);

  @$pb.TagNumber(4)
  Position get selectedPlacement => $_getN(3);
  @$pb.TagNumber(4)
  set selectedPlacement(Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSelectedPlacement() => $_has(3);
  @$pb.TagNumber(4)
  void clearSelectedPlacement() => clearField(4);
  @$pb.TagNumber(4)
  Position ensureSelectedPlacement() => $_ensure(3);
}

class PlayGameResponse extends $pb.GeneratedMessage {
  factory PlayGameResponse({
    $core.String? gameId,
    $core.bool? redPlayerActive,
    $core.Iterable<Position>? validPlacements,
    PieceMovedEvent? pieceMoved,
    $core.String? error,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    if (redPlayerActive != null) {
      $result.redPlayerActive = redPlayerActive;
    }
    if (validPlacements != null) {
      $result.validPlacements.addAll(validPlacements);
    }
    if (pieceMoved != null) {
      $result.pieceMoved = pieceMoved;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  PlayGameResponse._() : super();
  factory PlayGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayGameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameId', protoName: 'gameId')
    ..aOB(2, _omitFieldNames ? '' : 'redPlayerActive', protoName: 'redPlayerActive')
    ..pc<Position>(3, _omitFieldNames ? '' : 'validPlacements', $pb.PbFieldType.PM, protoName: 'validPlacements', subBuilder: Position.create)
    ..aOM<PieceMovedEvent>(4, _omitFieldNames ? '' : 'pieceMoved', protoName: 'pieceMoved', subBuilder: PieceMovedEvent.create)
    ..aOS(16, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayGameResponse clone() => PlayGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayGameResponse copyWith(void Function(PlayGameResponse) updates) => super.copyWith((message) => updates(message as PlayGameResponse)) as PlayGameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayGameResponse create() => PlayGameResponse._();
  PlayGameResponse createEmptyInstance() => create();
  static $pb.PbList<PlayGameResponse> createRepeated() => $pb.PbList<PlayGameResponse>();
  @$core.pragma('dart2js:noInline')
  static PlayGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayGameResponse>(create);
  static PlayGameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get redPlayerActive => $_getBF(1);
  @$pb.TagNumber(2)
  set redPlayerActive($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRedPlayerActive() => $_has(1);
  @$pb.TagNumber(2)
  void clearRedPlayerActive() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Position> get validPlacements => $_getList(2);

  @$pb.TagNumber(4)
  PieceMovedEvent get pieceMoved => $_getN(3);
  @$pb.TagNumber(4)
  set pieceMoved(PieceMovedEvent v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPieceMoved() => $_has(3);
  @$pb.TagNumber(4)
  void clearPieceMoved() => clearField(4);
  @$pb.TagNumber(4)
  PieceMovedEvent ensurePieceMoved() => $_ensure(3);

  @$pb.TagNumber(16)
  $core.String get error => $_getSZ(4);
  @$pb.TagNumber(16)
  set error($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(16)
  $core.bool hasError() => $_has(4);
  @$pb.TagNumber(16)
  void clearError() => clearField(16);
}

class PlayGameWebResponse extends $pb.GeneratedMessage {
  factory PlayGameWebResponse({
    $core.String? gameId,
    $core.String? error,
    $core.Iterable<Position>? validPlacements,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    if (error != null) {
      $result.error = error;
    }
    if (validPlacements != null) {
      $result.validPlacements.addAll(validPlacements);
    }
    return $result;
  }
  PlayGameWebResponse._() : super();
  factory PlayGameWebResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayGameWebResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayGameWebResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameId', protoName: 'gameId')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..pc<Position>(3, _omitFieldNames ? '' : 'validPlacements', $pb.PbFieldType.PM, protoName: 'validPlacements', subBuilder: Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayGameWebResponse clone() => PlayGameWebResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayGameWebResponse copyWith(void Function(PlayGameWebResponse) updates) => super.copyWith((message) => updates(message as PlayGameWebResponse)) as PlayGameWebResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayGameWebResponse create() => PlayGameWebResponse._();
  PlayGameWebResponse createEmptyInstance() => create();
  static $pb.PbList<PlayGameWebResponse> createRepeated() => $pb.PbList<PlayGameWebResponse>();
  @$core.pragma('dart2js:noInline')
  static PlayGameWebResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayGameWebResponse>(create);
  static PlayGameWebResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Position> get validPlacements => $_getList(2);
}

class PlayGameWebListenerRequest extends $pb.GeneratedMessage {
  factory PlayGameWebListenerRequest({
    $core.String? gameId,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    return $result;
  }
  PlayGameWebListenerRequest._() : super();
  factory PlayGameWebListenerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayGameWebListenerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayGameWebListenerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameId', protoName: 'gameId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayGameWebListenerRequest clone() => PlayGameWebListenerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayGameWebListenerRequest copyWith(void Function(PlayGameWebListenerRequest) updates) => super.copyWith((message) => updates(message as PlayGameWebListenerRequest)) as PlayGameWebListenerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayGameWebListenerRequest create() => PlayGameWebListenerRequest._();
  PlayGameWebListenerRequest createEmptyInstance() => create();
  static $pb.PbList<PlayGameWebListenerRequest> createRepeated() => $pb.PbList<PlayGameWebListenerRequest>();
  @$core.pragma('dart2js:noInline')
  static PlayGameWebListenerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayGameWebListenerRequest>(create);
  static PlayGameWebListenerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

/// #region Board
class Position extends $pb.GeneratedMessage {
  factory Position({
    $core.int? row,
    $core.int? column,
  }) {
    final $result = create();
    if (row != null) {
      $result.row = row;
    }
    if (column != null) {
      $result.column = column;
    }
    return $result;
  }
  Position._() : super();
  factory Position.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Position.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Position', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'row', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'column', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Position clone() => Position()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Position copyWith(void Function(Position) updates) => super.copyWith((message) => updates(message as Position)) as Position;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Position create() => Position._();
  Position createEmptyInstance() => create();
  static $pb.PbList<Position> createRepeated() => $pb.PbList<Position>();
  @$core.pragma('dart2js:noInline')
  static Position getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Position>(create);
  static Position? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get row => $_getIZ(0);
  @$pb.TagNumber(1)
  set row($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRow() => $_has(0);
  @$pb.TagNumber(1)
  void clearRow() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get column => $_getIZ(1);
  @$pb.TagNumber(2)
  set column($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColumn() => $_has(1);
  @$pb.TagNumber(2)
  void clearColumn() => clearField(2);
}

class Piece extends $pb.GeneratedMessage {
  factory Piece({
    $core.String? id,
    $core.int? rank,
    GamePlayer? player,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    if (player != null) {
      $result.player = player;
    }
    return $result;
  }
  Piece._() : super();
  factory Piece.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Piece.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Piece', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'rank', $pb.PbFieldType.OU3)
    ..aOM<GamePlayer>(3, _omitFieldNames ? '' : 'player', subBuilder: GamePlayer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Piece clone() => Piece()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Piece copyWith(void Function(Piece) updates) => super.copyWith((message) => updates(message as Piece)) as Piece;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Piece create() => Piece._();
  Piece createEmptyInstance() => create();
  static $pb.PbList<Piece> createRepeated() => $pb.PbList<Piece>();
  @$core.pragma('dart2js:noInline')
  static Piece getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Piece>(create);
  static Piece? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get rank => $_getIZ(1);
  @$pb.TagNumber(2)
  set rank($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearRank() => clearField(2);

  @$pb.TagNumber(3)
  GamePlayer get player => $_getN(2);
  @$pb.TagNumber(3)
  set player(GamePlayer v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlayer() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlayer() => clearField(3);
  @$pb.TagNumber(3)
  GamePlayer ensurePlayer() => $_ensure(2);
}

class Square extends $pb.GeneratedMessage {
  factory Square({
    $core.String? id,
    Piece? piece,
    $core.bool? playable,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (piece != null) {
      $result.piece = piece;
    }
    if (playable != null) {
      $result.playable = playable;
    }
    return $result;
  }
  Square._() : super();
  factory Square.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Square.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Square', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<Piece>(2, _omitFieldNames ? '' : 'piece', subBuilder: Piece.create)
    ..aOB(3, _omitFieldNames ? '' : 'playable')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Square clone() => Square()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Square copyWith(void Function(Square) updates) => super.copyWith((message) => updates(message as Square)) as Square;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Square create() => Square._();
  Square createEmptyInstance() => create();
  static $pb.PbList<Square> createRepeated() => $pb.PbList<Square>();
  @$core.pragma('dart2js:noInline')
  static Square getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Square>(create);
  static Square? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Piece get piece => $_getN(1);
  @$pb.TagNumber(2)
  set piece(Piece v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPiece() => $_has(1);
  @$pb.TagNumber(2)
  void clearPiece() => clearField(2);
  @$pb.TagNumber(2)
  Piece ensurePiece() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get playable => $_getBF(2);
  @$pb.TagNumber(3)
  set playable($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlayable() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlayable() => clearField(3);
}

class Board extends $pb.GeneratedMessage {
  factory Board({
    $core.String? id,
    $core.int? numRows,
    $core.int? numColumns,
    $core.Iterable<Row>? rows,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (numRows != null) {
      $result.numRows = numRows;
    }
    if (numColumns != null) {
      $result.numColumns = numColumns;
    }
    if (rows != null) {
      $result.rows.addAll(rows);
    }
    return $result;
  }
  Board._() : super();
  factory Board.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Board.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Board', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'numRows', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'numColumns', $pb.PbFieldType.OU3)
    ..pc<Row>(4, _omitFieldNames ? '' : 'rows', $pb.PbFieldType.PM, subBuilder: Row.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Board clone() => Board()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Board copyWith(void Function(Board) updates) => super.copyWith((message) => updates(message as Board)) as Board;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Board create() => Board._();
  Board createEmptyInstance() => create();
  static $pb.PbList<Board> createRepeated() => $pb.PbList<Board>();
  @$core.pragma('dart2js:noInline')
  static Board getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Board>(create);
  static Board? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get numRows => $_getIZ(1);
  @$pb.TagNumber(2)
  set numRows($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumRows() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumRows() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numColumns => $_getIZ(2);
  @$pb.TagNumber(3)
  set numColumns($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumColumns() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumColumns() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Row> get rows => $_getList(3);
}

class Row extends $pb.GeneratedMessage {
  factory Row({
    $core.Iterable<Square>? columns,
  }) {
    final $result = create();
    if (columns != null) {
      $result.columns.addAll(columns);
    }
    return $result;
  }
  Row._() : super();
  factory Row.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Row.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Row', package: const $pb.PackageName(_omitMessageNames ? '' : 'stratego.v1'), createEmptyInstance: create)
    ..pc<Square>(1, _omitFieldNames ? '' : 'columns', $pb.PbFieldType.PM, subBuilder: Square.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Row clone() => Row()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Row copyWith(void Function(Row) updates) => super.copyWith((message) => updates(message as Row)) as Row;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Row create() => Row._();
  Row createEmptyInstance() => create();
  static $pb.PbList<Row> createRepeated() => $pb.PbList<Row>();
  @$core.pragma('dart2js:noInline')
  static Row getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Row>(create);
  static Row? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Square> get columns => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
