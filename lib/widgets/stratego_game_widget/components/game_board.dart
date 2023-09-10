import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/services/strate_go/models/position.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_board_square.dart';
import 'package:flutter/widgets.dart';

class GameBoardWidget extends StatelessWidget {
  final stratego.Board board;
  final GlobalKey _draggableKey = GlobalKey();

  GameBoardWidget({Key? key, required this.board}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (final (rnx, row) in board.rows.indexed)
            _buildRow(context, rnx, row)
        ],
      ),
    );
  }

  Widget _buildRow(BuildContext context, int rnx, stratego.Row row) {
    return Row(
      children: [
        for (final (cnx, square) in row.columns.indexed)
          _buildSquare(context, Position(rnx, cnx), square)
      ],
    );
  }

  Widget _buildSquare(
      BuildContext context, Position position, stratego.Square square) {
    return GameBoardSquareWidget(
      square: square,
      position: position,
      dragKey: _draggableKey,
    );
  }
}
