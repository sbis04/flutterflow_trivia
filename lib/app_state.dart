import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  List<String> _words = [];
  List<String> get words => _words;
  set words(List<String> _value) {
    _words = _value;
  }

  void addToWords(String _value) {
    _words.add(_value);
  }

  void removeFromWords(String _value) {
    _words.remove(_value);
  }

  void removeAtIndexFromWords(int _index) {
    _words.removeAt(_index);
  }

  void updateWordsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _words[_index] = updateFn(_words[_index]);
  }

  void insertAtIndexInWords(int _index, String _value) {
    _words.insert(_index, _value);
  }

  bool _isVerifyPressed = false;
  bool get isVerifyPressed => _isVerifyPressed;
  set isVerifyPressed(bool _value) {
    _isVerifyPressed = _value;
  }

  bool _isJoinning = false;
  bool get isJoinning => _isJoinning;
  set isJoinning(bool _value) {
    _isJoinning = _value;
  }

  String _apiKey = 'YOUR_OPENAI_KEY_HERE';
  String get apiKey => _apiKey;
  set apiKey(String _value) {
    _apiKey = _value;
  }

  String _modelName = 'gpt-4';
  String get modelName => _modelName;
  set modelName(String _value) {
    _modelName = _value;
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
