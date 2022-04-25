import 'package:flutter/material.dart';
import 'package:gestion_estados/config/routes/app_routes.dart';
import 'package:gestion_estados/core/providers/album_provider.dart';
import 'package:gestion_estados/core/providers/user_provider.dart';
import 'package:gestion_estados/core/widgets/album_tile.dart';
import 'package:provider/provider.dart';

import '../domain/model/album/album.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final providerAlbum = Provider.of<AlbumProvider>(context);
    final providerUser = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Gestion de Estados',
          style: Theme.of(context).textTheme.headline2,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shop),
            onPressed: () => Navigator.of(context).pushNamed(AppRoutes.buy),
          )
        ],
      ),
      body: FutureBuilder<List<Album>>(
          future: providerAlbum.albumUseCase.getAll(),
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(itemBuilder: (_, index) {
                Album album = snapshot.data![index];
                return AlbumTile(album: album);
              });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const Center(
              child: SizedBox(
                  width: 30, height: 30, child: CircularProgressIndicator()),
            );
          }),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.deepPurple),
        height: 144,
        child: Center(
            child: Text(
          'Bienvenido ${providerUser.userName}',
          style: Theme.of(context).textTheme.headline2,
        )),
      ),
    );
  }
}
