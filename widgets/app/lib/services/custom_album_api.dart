import 'package:album/domain/model/album/album.dart';
import 'package:album/domain/model/album/gateway/album_gateway.dart';
import 'package:http/http.dart' as http;
class CustomAlbumApi extends AlbumGateway{
  @override
  Future<List<Album>> getAll()  async {
    
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/photos/");
    final response = await  http.get(url);
    if (response.statusCode  == 200){
      return albumFromJson(response.body);
    }else {
      throw Exception('Fue imposible adquirir esta url');
    }
  }

  @override
  Future<Album> getByID(String id) {

    throw UnimplementedError();
  }

}