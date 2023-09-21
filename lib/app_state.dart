import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _controlePaginaDesktop = 0;
  int get controlePaginaDesktop => _controlePaginaDesktop;
  set controlePaginaDesktop(int _value) {
    _controlePaginaDesktop = _value;
  }

  int _controlePaginaMobile = 0;
  int get controlePaginaMobile => _controlePaginaMobile;
  set controlePaginaMobile(int _value) {
    _controlePaginaMobile = _value;
  }

  int _controlePaginasTablet = 0;
  int get controlePaginasTablet => _controlePaginasTablet;
  set controlePaginasTablet(int _value) {
    _controlePaginasTablet = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
