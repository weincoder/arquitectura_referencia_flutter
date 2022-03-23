
import 'package:album/domain/use_cases/album/album_use_cases.dart';
import 'package:app/pages/home.dart';
import 'package:app/services/custom_album_api.dart';
import 'package:flutter/material.dart';

import 'config/album_inherited.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return 
    AlbumInheritedWidget( getAlbumUseCase: GetAlbumUseCase(CustomAlbumApi()),
    child :MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    ));
  }
}

