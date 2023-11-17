// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionStruct extends FFFirebaseStruct {
  QuestionStruct({
    String? statement,
    List<String>? options,
    int? correctOptionIndex,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _statement = statement,
        _options = options,
        _correctOptionIndex = correctOptionIndex,
        super(firestoreUtilData);

  // "statement" field.
  String? _statement;
  String get statement => _statement ?? '';
  set statement(String? val) => _statement = val;
  bool hasStatement() => _statement != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;
  void updateOptions(Function(List<String>) updateFn) =>
      updateFn(_options ??= []);
  bool hasOptions() => _options != null;

  // "correct_option_index" field.
  int? _correctOptionIndex;
  int get correctOptionIndex => _correctOptionIndex ?? 0;
  set correctOptionIndex(int? val) => _correctOptionIndex = val;
  void incrementCorrectOptionIndex(int amount) =>
      _correctOptionIndex = correctOptionIndex + amount;
  bool hasCorrectOptionIndex() => _correctOptionIndex != null;

  static QuestionStruct fromMap(Map<String, dynamic> data) => QuestionStruct(
        statement: data['statement'] as String?,
        options: getDataList(data['options']),
        correctOptionIndex: castToType<int>(data['correct_option_index']),
      );

  static QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? QuestionStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'statement': _statement,
        'options': _options,
        'correct_option_index': _correctOptionIndex,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'statement': serializeParam(
          _statement,
          ParamType.String,
        ),
        'options': serializeParam(
          _options,
          ParamType.String,
          true,
        ),
        'correct_option_index': serializeParam(
          _correctOptionIndex,
          ParamType.int,
        ),
      }.withoutNulls;

  static QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionStruct(
        statement: deserializeParam(
          data['statement'],
          ParamType.String,
          false,
        ),
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
        correctOptionIndex: deserializeParam(
          data['correct_option_index'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuestionStruct &&
        statement == other.statement &&
        listEquality.equals(options, other.options) &&
        correctOptionIndex == other.correctOptionIndex;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([statement, options, correctOptionIndex]);
}

QuestionStruct createQuestionStruct({
  String? statement,
  int? correctOptionIndex,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionStruct(
      statement: statement,
      correctOptionIndex: correctOptionIndex,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionStruct? updateQuestionStruct(
  QuestionStruct? question, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    question
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionStructData(
  Map<String, dynamic> firestoreData,
  QuestionStruct? question,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (question == null) {
    return;
  }
  if (question.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && question.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionData = getQuestionFirestoreData(question, forFieldValue);
  final nestedData = questionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = question.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionFirestoreData(
  QuestionStruct? question, [
  bool forFieldValue = false,
]) {
  if (question == null) {
    return {};
  }
  final firestoreData = mapToFirestore(question.toMap());

  // Add any Firestore field values
  question.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionListFirestoreData(
  List<QuestionStruct>? questions,
) =>
    questions?.map((e) => getQuestionFirestoreData(e, true)).toList() ?? [];
