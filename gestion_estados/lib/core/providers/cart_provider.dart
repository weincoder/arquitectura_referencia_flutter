import 'package:flutter/material.dart';
import 'package:gestion_estados/domain/model/album/album.dart';

class CartProvider extends ChangeNotifier{
  final List<Album> _listOfAlbums = [];
  get listOfAlbums =>  _listOfAlbums;
  void add(Album album){
    _listOfAlbums.add(album);
    notifyListeners();
  }
  void remove(Album album){
    _listOfAlbums.remove(album);
    notifyListeners();
  }
}
