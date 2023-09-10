import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pbenum.dart';
import 'package:casey_boyer_brand_web/services/strate_go/models/position.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/bloc/stratego_game_widget_bloc.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_pieces/draggable_piece.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_pieces/game_piece.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameBoardSquareWidget extends StatelessWidget {
  final stratego.Square square;
  final Position position;
  final GlobalKey dragKey;

  const GameBoardSquareWidget({
    Key? key,
    required this.square,
    required this.position,
    required this.dragKey,
  }) : super(key: key);

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
          child: _resolveSquareContents(context),
        ),
      ),
    );
  }

  Widget _resolveSquareContents(BuildContext context) {
    if (square.playable) {
      if (square.hasPiece()) {
        if (square.piece.player.color == PlayerColor.PlayerColor_BLUE) {
          return DragTarget<DraggablePiece>(
            builder: (context, candidateItems, rejectedItems) {
              return GamePieceWidget(
                dragKey: dragKey,
                position: position,
                piece: square.piece,
              );
            },
            onAccept: (piece) {
              BlocProvider.of<StrategoGameWidgetBloc>(context).add(
                  StrategoGameRequestMoveEvent(
                      from: piece.position, to: position));
            },
          );
        } else {
          return GamePieceWidget(
            dragKey: dragKey,
            position: position,
            piece: square.piece,
          );
        }
      } else {
        // TODO: check that square is a valid target
        var isValidTarget = true;
        if (isValidTarget) {
          return DragTarget<DraggablePiece>(
            builder: (context, candidateItems, rejectedItems) {
              return Container();
            },
            onAccept: (piece) {
              BlocProvider.of<StrategoGameWidgetBloc>(context).add(
                  StrategoGameRequestMoveEvent(
                      from: piece.position, to: position));
            },
          );
        } else {
          return Container();
        }
      }
    } else {
      return Container(color: Colors.deepPurple);
    }
  }
}
