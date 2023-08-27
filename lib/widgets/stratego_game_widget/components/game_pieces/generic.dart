import 'package:casey_boyer_brand_web/services/strate_go/generated/strate.v1.pb.dart'
    as stratego;
import 'package:casey_boyer_brand_web/util/color.dart';
import 'package:flutter/material.dart';

class GamePieceGenericWidget extends StatelessWidget {
  final String name;
  final stratego.GamePlayer player;

  const GamePieceGenericWidget(
      {Key? key, required this.name, required this.player})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = (player.color == stratego.PlayerColor.PlayerColor_RED)
        ? Colors.red
        : Colors.blue;
    return Container(
        decoration: BoxDecoration(
          color: lighten(color, 20),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          border: Border.fromBorderSide(BorderSide(
            color: darken(color, 20),
            width: 2,
          )),
        ),
        child: Center(child: Text(name)));
  }
}
