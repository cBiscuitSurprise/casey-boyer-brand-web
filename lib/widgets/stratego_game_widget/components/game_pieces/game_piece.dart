import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/services/strate_go/models/position.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_pieces/generic.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_pieces/piece_names.dart';
import 'package:flutter/material.dart';

class GamePieceWidget extends StatelessWidget {
  final stratego.Piece? piece;
  final Position position;
  final GlobalKey dragKey;

  const GamePieceWidget({
    Key? key,
    required this.piece,
    required this.position,
    required this.dragKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GamePieceGenericWidget(
      name: rankToName(piece!.rank),
      piece: piece!,
      position: position,
      dragKey: dragKey,
    );
  }
}
