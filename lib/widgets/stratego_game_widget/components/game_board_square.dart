import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/services/strate_go/models/position.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/bloc/stratego_game_widget_bloc.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_pieces/draggable_piece.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_pieces/game_piece.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameBoardSquareWidget extends StatelessWidget {
  final stratego.Square square;
  final Position position;
  final bool maskSquare;
  final bool isValidPlacement;
  final GlobalKey dragKey;

  const GameBoardSquareWidget({
    Key? key,
    required this.square,
    required this.position,
    required this.dragKey,
    this.maskSquare = false,
    this.isValidPlacement = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: (maskSquare && !isValidPlacement)
          ? BoxDecoration(color: Colors.grey.withOpacity(0.5))
          : null,
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
          child: _resolveSquareContents(context),
        ),
      ),
    );
  }

  Widget _resolveSquareContents(BuildContext context) {
    Widget contents;
    if (square.playable) {
      Widget inner;
      if (square.hasPiece()) {
        inner = GamePieceWidget(
          dragKey: dragKey,
          position: position,
          piece: square.piece,
        );
      } else {
        inner = Container();
      }

      contents = DragTarget<DraggablePiece>(
        builder: (context, candidateItems, rejectedItems) {
          return inner;
        },
        onWillAccept: (piece) =>
            !square.hasPiece() ||
            (piece?.piece.player.color != square.piece.player.color),
        onAccept: (piece) {
          BlocProvider.of<StrategoGameWidgetBloc>(context).add(
              StrategoGameRequestMoveEvent(from: piece.position, to: position));
        },
      );
    } else {
      contents = Container(color: Colors.deepPurple);
    }

    return contents;
  }
}
