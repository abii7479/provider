import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class connectingprovider extends ChangeNotifier {
  List names = ['hello'];

  add(String data) {
    names.add(data);
    notifyListeners();
  }

  delete(String data) {
    names.remove(data);
    notifyListeners();
  }

  Brightness b = Brightness.dark;

  theme() {
    if (b == Brightness.dark) {
      b = Brightness.light;
    } else if (b == Brightness.light) {
      b = Brightness.dark;
    }
    notifyListeners();
  }

  changeIcons() {
    if (b == Brightness.dark) {
      Icon(Icons.dark_mode_outlined);
    } else if (b == Brightness.light) {
      Icon(Icons.sunny);
    }
    notifyListeners();
  }
}
