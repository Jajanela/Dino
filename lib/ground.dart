import 'package:flutter/widgets.dart';

import 'constants.dart';
import 'game_object.dart';
import 'sprite.dart';

Sprite groundSprite = Sprite()
  ..imagePath = "assets/images/ground.png"
  ..imageWidth = 10072
  ..imageHeight = 2837;

class Ground extends GameObject {
  final Offset worldLocation;

  Ground({required this.worldLocation});

  @override
  Rect getRect(Size screenSize, double runDistance) {
    return Rect.fromLTWH(
      (worldLocation.dx - runDistance) * worlToPixelRatio,
      screenSize.height / 1.75 - groundSprite.imageHeight,
      groundSprite.imageWidth.toDouble(),
      groundSprite.imageHeight.toDouble(),
    );
  }

  @override
  Widget render() {
    return Image.asset(groundSprite.imagePath);
  }
}
