import 'package:album/domain/use_cases/album/album_use_cases.dart';
import 'package:flutter/material.dart';

class AlbumInheritedWidget extends InheritedWidget {
  const AlbumInheritedWidget({Key? key, required Widget child, required this.getAlbumUseCase})
      : super(key: key, child: child);

  static AlbumInheritedWidget of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<AlbumInheritedWidget>()!;
  final GetAlbumUseCase getAlbumUseCase;
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
