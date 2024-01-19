import 'package:flutter/material.dart';
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

  bool _isAutoLogin = false;
  bool get isAutoLogin => _isAutoLogin;
  set isAutoLogin(bool value) {
    _isAutoLogin = value;
  }

  String _sharedCompanyid = '';
  String get sharedCompanyid => _sharedCompanyid;
  set sharedCompanyid(String value) {
    _sharedCompanyid = value;
  }

  String _sharePassword = '';
  String get sharePassword => _sharePassword;
  set sharePassword(String value) {
    _sharePassword = value;
  }

  String _isAppUse = '';
  String get isAppUse => _isAppUse;
  set isAppUse(String value) {
    _isAppUse = value;
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
