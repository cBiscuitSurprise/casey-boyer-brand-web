import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as strategopb;

class Position {
  final int row;
  final int column;

  const Position(this.row, this.column);

  @override
  toString() {
    return "Position($row, $column)";
  }

  Position.fromProtoPosition(strategopb.Position p)
      : row = p.row,
        column = p.column;

  strategopb.Position toProtoPosition() {
    return strategopb.Position(
      row: row,
      column: column,
    );
  }
}
