import 'package:album/album.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final albumProvider = Provider<GetAlbumUseCase> ((ref) {
  return GetAlbumUseCase(AlbumApi());
},);