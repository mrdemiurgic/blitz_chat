import 'package:flutter/material.dart';
import 'dart:math';

class VideoBoxUtils {
  static Map<String, RelativeRect> remoteVideoBoxes(
    Orientation orientation,
    Size screenSize,
    List<String> peerIds,
  ) {
    if (peerIds.length == 1) {
      return {peerIds[0]: fullSize(orientation, screenSize)};
    }

    if (peerIds.length == 2) {
      final boxes = twinScreen(orientation, screenSize);
      return {peerIds[0]: boxes[0], peerIds[1]: boxes[1]};
    }

    return {};
  }

  static List<RelativeRect> twinScreen(
      Orientation orientation, Size screenSize) {
    final aspectRatio = screenSize.longestSide / screenSize.shortestSide;
    final isVeryWide = aspectRatio >= 2;
    final isLandscape = orientation == Orientation.landscape;
    final length =
        isVeryWide ? screenSize.shortestSide : screenSize.longestSide / 2;

    final double horizontalOffset = (!isLandscape && !isVeryWide)
        ? (screenSize.width - length) / 2
        : (isLandscape && isVeryWide)
            ? (screenSize.width - length * 2) / 2
            : 0;
    final double verticalOffset = (!isLandscape && isVeryWide)
        ? (screenSize.height - length * 2) / 2
        : (isLandscape && !isVeryWide)
            ? (screenSize.height - length) / 2
            : 0;

    return [
      RelativeRect.fromLTRB(
          horizontalOffset,
          verticalOffset,
          horizontalOffset + (isLandscape ? length : 0),
          verticalOffset + (isLandscape ? 0 : length)),
      RelativeRect.fromLTRB(
          horizontalOffset + (isLandscape ? length : 0),
          verticalOffset + (isLandscape ? 0 : length),
          horizontalOffset,
          verticalOffset),
    ];
  }

  static RelativeRect fullSize(Orientation orientation, Size screenSize) {
    final isLandscape = orientation == Orientation.landscape;
    final length = screenSize.shortestSide;
    final offset = (screenSize.longestSide - length) / 2;

    final double left = isLandscape ? offset : 0;
    final double top = isLandscape ? 0 : offset;
    final double right = left;
    final double bottom = top;

    final newRect = RelativeRect.fromLTRB(left, top, right, bottom);
    print('screenSize: $screenSize');
    print('getFullSize: $newRect');
    return newRect;
  }

  static RelativeRect full() => RelativeRect.fromLTRB(0, 0, 0, 0);

  static RelativeRect localMinimized(Orientation orientation, Size screenSize) {
    final length = screenSize.shortestSide / 3;
    final double left = screenSize.width - length;
    final double top = screenSize.height - length;
    final double right = 0;
    final double bottom = 0;

    return RelativeRect.fromLTRB(left, top, right, bottom);
  }
}
