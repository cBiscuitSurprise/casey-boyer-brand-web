import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/components/game_pieces/generic.dart';
import 'package:flutter/material.dart';

class GamePieceWidget extends StatelessWidget {
  final stratego.Piece? piece;

  const GamePieceWidget({Key? key, required this.piece}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (piece!.rank) {
      case 11:
        return GamePieceGenericWidget(name: "B", player: piece!.player);
      case 10:
        return GamePieceGenericWidget(name: "Ma", player: piece!.player);
      case 9:
        return GamePieceGenericWidget(name: "G", player: piece!.player);
      case 8:
        return GamePieceGenericWidget(name: "Co", player: piece!.player);
      case 7:
        return GamePieceGenericWidget(name: "Mj", player: piece!.player);
      case 6:
        return GamePieceGenericWidget(name: "Ca", player: piece!.player);
      case 5:
        return GamePieceGenericWidget(name: "L", player: piece!.player);
      case 4:
        return GamePieceGenericWidget(name: "Se", player: piece!.player);
      case 3:
        return GamePieceGenericWidget(name: "Mi", player: piece!.player);
      case 2:
        return GamePieceGenericWidget(name: "Sc", player: piece!.player);
      case 1:
        return GamePieceGenericWidget(name: "Sp", player: piece!.player);
      case 0:
        return GamePieceGenericWidget(name: "F", player: piece!.player);
      default:
        return const Text("Missing");
    }
  }
}
