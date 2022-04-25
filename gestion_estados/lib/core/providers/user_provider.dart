import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
  bool _userLogged = false;
  String _userName = "nombre no ingresado";
  String get userName => _userName;
  bool get userLogged => _userLogged;
  set userName (String name){
    _userName = name;
    notifyListeners();
  }
  set userLogged (bool currentState){
    _userLogged = currentState;
    notifyListeners();
  }
}