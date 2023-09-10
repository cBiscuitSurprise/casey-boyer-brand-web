import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/services/strate_go/models/position.dart';
import 'package:casey_boyer_brand_web/util/color.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_pieces/draggable_piece.dart';
import 'package:flutter/material.dart';

import 'dragging_game_piece.dart';

class GamePieceGenericWidget extends StatelessWidget {
  final String name;
  final stratego.Piece piece;
  final Position position;
  final GlobalKey dragKey;

  const GamePieceGenericWidget({
    Key? key,
    required this.name,
    required this.piece,
    required this.position,
    required this.dragKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = (piece.player.color == stratego.PlayerColor.PlayerColor_RED)
        ? Colors.red
        : Colors.blue;
    return LongPressDraggable<DraggablePiece>(
      data: DraggablePiece(position: position, piece: piece),
      dragAnchorStrategy: childDragAnchorStrategy,
      delay: const Duration(milliseconds: 100),
      feedback: DraggingGamePieceWidget(
        dragKey: dragKey,
        name: name,
        piece: piece,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: lighten(color, 20),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          border: Border.fromBorderSide(BorderSide(
            color: darken(color, 20),
            width: 2,
          )),
        ),
        child: Center(child: Text(name)),
      ),
    );
  }
}
