import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/services/strate_go/models/position.dart';

class DraggablePiece {
  final Position position;
  final stratego.Piece piece;

  const DraggablePiece({
    required this.position,
    required this.piece,
  });
}
