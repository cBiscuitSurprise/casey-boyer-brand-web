import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_pieces/game_piece.dart';
import 'package:flutter/material.dart';

class GameBoardSquareWidget extends StatelessWidget {
  final stratego.Square square;

  const GameBoardSquareWidget({Key? key, required this.square})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: (Theme.of(context).brightness == Brightness.dark)
            ? const Color.fromARGB(255, 55, 114, 82)
            : Colors.green[50],
        border: Border.fromBorderSide(BorderSide(
          color: (Theme.of(context).brightness == Brightness.dark)
              ? Colors.grey[200]!
              : Colors.grey,
        )),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: SizedBox(
          height: 30,
          width: 30,
          child: _resolveSquareContents(),
        ),
      ),
    );
  }

  Widget _resolveSquareContents() {
    if (square.playable) {
      if (square.hasPiece()) {
        return GamePieceWidget(
          piece: square.piece,
        );
      } else {
        return Container();
      }
    } else {
      return Container(color: Colors.deepPurple);
    }
  }
}
