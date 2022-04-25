import 'package:flutter/material.dart';
import 'package:gestion_estados/domain/use_cases/album/album_use_cases.dart';
class AlbumProvider extends ChangeNotifier{

  final GetAlbumUseCase albumUseCase;
  AlbumProvider({required this.albumUseCase});

}
