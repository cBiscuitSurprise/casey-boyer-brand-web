import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_board_square.dart';
import 'package:flutter/widgets.dart';

class GameBoardWidget extends StatelessWidget {
  final stratego.Board board;

  const GameBoardWidget({Key? key, required this.board}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [for (var row in board.rows) _buildRow(context, row)],
      ),
    );
  }

  Widget _buildRow(BuildContext context, stratego.Row row) {
    return Row(
      children: [for (var square in row.columns) _buildSquare(context, square)],
    );
  }

  Widget _buildSquare(BuildContext context, stratego.Square square) {
    return GameBoardSquareWidget(square: square);
  }
}
