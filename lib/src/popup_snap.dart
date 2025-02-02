import 'package:flutter/cupertino.dart';

abstract class PopupSnap {
  const PopupSnap();
}

class DefaultPopupSnap extends PopupSnap {
  final DefaultPopupSnapType type;

  const DefaultPopupSnap(this.type);
}

class CustomPopupSnap extends PopupSnap {
  final Alignment contentAlignment;
  final Alignment rotationAlignment;

  CustomPopupSnap(
      {required this.contentAlignment, required this.rotationAlignment});
}

enum DefaultPopupSnapType {
  /// Snap the popup to the marker's left edge.
  markerLeft,

  /// Snap the popup to the marker's top edge.
  markerTop,

  /// Snap the popup to the marker's right edge.
  markerRight,

  /// Snap the popup to the marker's bottom edge.
  markerBottom,

  /// Position the popup centered over the marker.
  markerCenter,

  /// Snap the popup to the left of the map.
  mapLeft,

  /// Snap the popup to the top of the map.
  mapTop,

  /// Snap the popup to the right of the map.
  mapRight,

  /// Snap the popup to the bottom of the map.
  mapBottom,

  /// Snap the popup to the center of the map.
  mapCenter,
}
