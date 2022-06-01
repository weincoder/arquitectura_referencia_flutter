import 'package:album/config/album_inherited.dart';
import 'package:album/domain/use_cases/album/album_use_cases.dart';
import 'package:album/infraestructure/driven_adapters/get_album_api/album_api.dart';
import 'package:album/ui/pages/album_page.dart';
import 'package:app/app_routes.dart';
import 'package:app/pages/home.dart';
import 'package:app/services/custom_album_api.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlbumInheritedWidget(
        getAlbumUseCase: GetAlbumUseCase(CustomAlbumApi()),
        child: MaterialApp(
          onGenerateRoute: (settings) {
            MaterialPageRoute currentMaterialPage;
            switch (settings.name) {
              case (AppRoutes.album):
                currentMaterialPage = MaterialPageRoute(
                    builder: (currentContex) => AlbumPage(
                        albumList: AlbumInheritedWidget.of(currentContex)
                            .getAlbumUseCase
                            .getAll()));
                break;
              default:
                currentMaterialPage =
                    MaterialPageRoute(builder: (context) => const MyHomePage());
                break;
            }
            return currentMaterialPage;
          },
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(),
        ));
  }
}
