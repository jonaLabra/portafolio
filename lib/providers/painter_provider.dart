import 'package:flutter/material.dart';

class ChangePages extends ChangeNotifier {
  int _page = 0;

  int get page => _page;

  void changePage(int page) {
    _page = page;
    notifyListeners();
  }
}
