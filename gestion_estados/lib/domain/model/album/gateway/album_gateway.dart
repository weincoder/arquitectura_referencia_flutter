
import '../album.dart';
abstract class AlbumGateway {
  Future<Album> getByID( String id );
  Future<List<Album>> getAll();
}