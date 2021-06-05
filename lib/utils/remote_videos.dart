import 'package:flutter/material.dart';

class RemoteVideosUtils {
  static List<Size> getBoxPositions(
      int number, double screenWidth, double screenHeight) {
    final orientation = _getOrientation(screenWidth, screenHeight);

    switch (number) {
      case 1:
        return [Size(screenWidth, screenHeight)];
      case 2:

      // return [Size()]
      default:
        return [];
    }
  }

  static Orientation _getOrientation(double screenWidth, double screenHeight) =>
      screenWidth > screenHeight ? Orientation.landscape : Orientation.portrait;
}
