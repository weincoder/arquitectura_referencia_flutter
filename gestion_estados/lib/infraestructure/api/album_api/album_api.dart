import 'package:gestion_estados/domain/model/album/album.dart';
import 'package:gestion_estados/domain/model/album/gateway/album_gateway.dart';
import 'package:gestion_estados/infraestructure/api/album_api/errors/album_error.dart';
import 'package:http/http.dart' as http;


class CustomAlbumApi extends AlbumGateway{
  @override
  Future<List<Album>> getAll()  async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/photos/");
    final response = await  http.get(url);
    if (response.statusCode  == 200){
      return albumFromJson(response.body);
    }else {
      throw AlbumApiException();
    }
  }

  @override
  Future<Album> getByID(String id) {
    throw UnimplementedError();
  }

}