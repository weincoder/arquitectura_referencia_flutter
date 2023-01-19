import '../../model/album/album.dart';
import '../../model/album/gateway/album_gateway.dart';

class GetAlbumUseCase {
  final AlbumGateway _albumGateway;
  GetAlbumUseCase(this._albumGateway);

  Future<Album> getAlbumByID(String id) async {
    return _albumGateway.getByID(id);
  }

  Future<List<Album>> getAll() async {
    return _albumGateway.getAll();
  }
}
