import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as strategopb;
import 'package:casey_boyer_brand_web/services/strate_go/models/position.dart';

class Game {
  final strategopb.Game _game;

  const Game({required game}) : _game = game;

  String get id {
    return _game.id;
  }

  strategopb.GameState get state {
    return _game.state;
  }

  strategopb.Board? get board {
    if (_game.hasBoard()) {
      return _game.board;
    } else {
      return null;
    }
  }

  void movePiece(Position from, Position to) {
    var piece = removePiece(from);
    if (piece != null) {
      var toSquare = _game.board.rows[to.row].columns[to.column];
      toSquare.piece = piece;
    }
  }

  strategopb.Piece? removePiece(Position from) {
    var fromSquare = _game.board.rows[from.row].columns[from.column];
    if (fromSquare.hasPiece()) {
      var piece = fromSquare.piece;
      fromSquare.clearPiece();
      return piece;
    }

    return null;
  }
}
