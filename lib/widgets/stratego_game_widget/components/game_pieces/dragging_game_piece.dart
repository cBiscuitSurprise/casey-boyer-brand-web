import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/util/color.dart';
import 'package:flutter/material.dart';

class DraggingGamePieceWidget extends StatelessWidget {
  final String name;
  final stratego.Piece piece;
  final GlobalKey dragKey;

  const DraggingGamePieceWidget({
    Key? key,
    required this.name,
    required this.piece,
    required this.dragKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = (piece.player.color == stratego.PlayerColor.PlayerColor_RED)
        ? Colors.red
        : Colors.blue;
    return SizedBox(
      width: 42,
      height: 42,
      child: Container(
        decoration: BoxDecoration(
          color: lighten(color, 1),
          gradient: RadialGradient(
            center: const Alignment(-0.6, -0.6),
            colors: [
              lighten(color, 50),
              lighten(color, 1),
            ],
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.fromBorderSide(BorderSide(
            color: darken(color, 40),
            width: 2,
          )),
        ),
        child: Center(
          child: Text(
            name,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
