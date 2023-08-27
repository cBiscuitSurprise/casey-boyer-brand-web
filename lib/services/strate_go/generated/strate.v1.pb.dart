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

class Game extends $pb.GeneratedMessage {
  factory Game({
    $core.String? id,
    GameState? state,
    $core.Iterable<$core.String>? playerIds,
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
    ..aOM<Board>(4, _omitFieldNames ? '' : 'board', subBuilder: Board.create)
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
  Board get board => $_getN(3);
  @$pb.TagNumber(4)
  set board(Board v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBoard() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoard() => clearField(4);
  @$pb.TagNumber(4)
  Board ensureBoard() => $_ensure(3);
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

/// #region Board
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
