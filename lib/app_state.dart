import 'package:flutter/material.dart';
import '/backend/backend.dart';

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
  set words(List<String> value) {
    _words = value;
  }

  void addToWords(String value) {
    _words.add(value);
  }

  void removeFromWords(String value) {
    _words.remove(value);
  }

  void removeAtIndexFromWords(int index) {
    _words.removeAt(index);
  }

  void updateWordsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _words[index] = updateFn(_words[index]);
  }

  void insertAtIndexInWords(int index, String value) {
    _words.insert(index, value);
  }

  bool _isVerifyPressed = false;
  bool get isVerifyPressed => _isVerifyPressed;
  set isVerifyPressed(bool value) {
    _isVerifyPressed = value;
  }

  bool _isJoinning = false;
  bool get isJoinning => _isJoinning;
  set isJoinning(bool value) {
    _isJoinning = value;
  }

  String _apiKey = 'YOUR_OPENAI_KEY_HERE';
  String get apiKey => _apiKey;
  set apiKey(String value) {
    _apiKey = value;
  }

  String _modelName = 'gpt-4';
  String get modelName => _modelName;
  set modelName(String value) {
    _modelName = value;
  }

  List<QuestionStruct> _questionSet = [];
  List<QuestionStruct> get questionSet => _questionSet;
  set questionSet(List<QuestionStruct> value) {
    _questionSet = value;
  }

  void addToQuestionSet(QuestionStruct value) {
    _questionSet.add(value);
  }

  void removeFromQuestionSet(QuestionStruct value) {
    _questionSet.remove(value);
  }

  void removeAtIndexFromQuestionSet(int index) {
    _questionSet.removeAt(index);
  }

  void updateQuestionSetAtIndex(
    int index,
    QuestionStruct Function(QuestionStruct) updateFn,
  ) {
    _questionSet[index] = updateFn(_questionSet[index]);
  }

  void insertAtIndexInQuestionSet(int index, QuestionStruct value) {
    _questionSet.insert(index, value);
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
