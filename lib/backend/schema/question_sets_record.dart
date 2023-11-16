import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionSetsRecord extends FirestoreRecord {
  QuestionSetsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "questions" field.
  List<QuestionStruct>? _questions;
  List<QuestionStruct> get questions => _questions ?? const [];
  bool hasQuestions() => _questions != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "set_name" field.
  String? _setName;
  String get setName => _setName ?? '';
  bool hasSetName() => _setName != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _questions = getStructList(
      snapshotData['questions'],
      QuestionStruct.fromMap,
    );
    _createdAt = snapshotData['created_at'] as DateTime?;
    _setName = snapshotData['set_name'] as String?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('question_sets');

  static Stream<QuestionSetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionSetsRecord.fromSnapshot(s));

  static Future<QuestionSetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionSetsRecord.fromSnapshot(s));

  static QuestionSetsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionSetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionSetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionSetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionSetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionSetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionSetsRecordData({
  DateTime? createdAt,
  String? setName,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'set_name': setName,
      'created_by': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionSetsRecordDocumentEquality
    implements Equality<QuestionSetsRecord> {
  const QuestionSetsRecordDocumentEquality();

  @override
  bool equals(QuestionSetsRecord? e1, QuestionSetsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.questions, e2?.questions) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.setName == e2?.setName &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(QuestionSetsRecord? e) => const ListEquality()
      .hash([e?.questions, e?.createdAt, e?.setName, e?.createdBy]);

  @override
  bool isValidKey(Object? o) => o is QuestionSetsRecord;
}
