import 'package:album/domain/model/album/album.dart';
import 'package:album/ui/common/album_tile.dart';
import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {
  final Future<List<Album>> albumList;
  const AlbumPage({Key? key, required this.albumList}) : super(key: key);

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  late final Future<List<Album>> albumList;
  @override
  void initState() {
    super.initState();
    albumList = widget.albumList;
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('🌎 Widget Album',style: TextStyle(fontSize: 24.0)),),
      body:  FutureBuilder<List<Album>>(future: albumList ,builder: (_,snapshot){
        if (snapshot.hasData){
          return ListView.builder(itemBuilder: (_,index){
            Album album = snapshot.data![index];
            return AlbumTile(url: album.url,
            title: album.title, id: album.id.toString());
          });
        }
        else if (snapshot.hasError){
          return Text('${snapshot.error}');
        }
        return const  Center(child:  CircularProgressIndicator());

      }),
    );
  }
}