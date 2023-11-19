import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RoomRecord extends FirestoreRecord {
  RoomRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "host" field.
  String? _host;
  String get host => _host ?? '';
  bool hasHost() => _host != null;

  // "words" field.
  List<String>? _words;
  List<String> get words => _words ?? const [];
  bool hasWords() => _words != null;

  // "is_started" field.
  bool? _isStarted;
  bool get isStarted => _isStarted ?? false;
  bool hasIsStarted() => _isStarted != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "question_set" field.
  DocumentReference? _questionSet;
  DocumentReference? get questionSet => _questionSet;
  bool hasQuestionSet() => _questionSet != null;

  // "current_question_index" field.
  int? _currentQuestionIndex;
  int get currentQuestionIndex => _currentQuestionIndex ?? 0;
  bool hasCurrentQuestionIndex() => _currentQuestionIndex != null;

  void _initializeFields() {
    _code = castToType<int>(snapshotData['code']);
    _host = snapshotData['host'] as String?;
    _words = getDataList(snapshotData['words']);
    _isStarted = snapshotData['is_started'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _questionSet = snapshotData['question_set'] as DocumentReference?;
    _currentQuestionIndex =
        castToType<int>(snapshotData['current_question_index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('room');

  static Stream<RoomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomRecord.fromSnapshot(s));

  static Future<RoomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomRecord.fromSnapshot(s));

  static RoomRecord fromSnapshot(DocumentSnapshot snapshot) => RoomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomRecordData({
  int? code,
  String? host,
  bool? isStarted,
  DateTime? createdAt,
  DocumentReference? questionSet,
  int? currentQuestionIndex,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
      'host': host,
      'is_started': isStarted,
      'created_at': createdAt,
      'question_set': questionSet,
      'current_question_index': currentQuestionIndex,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomRecordDocumentEquality implements Equality<RoomRecord> {
  const RoomRecordDocumentEquality();

  @override
  bool equals(RoomRecord? e1, RoomRecord? e2) {
    const listEquality = ListEquality();
    return e1?.code == e2?.code &&
        e1?.host == e2?.host &&
        listEquality.equals(e1?.words, e2?.words) &&
        e1?.isStarted == e2?.isStarted &&
        e1?.createdAt == e2?.createdAt &&
        e1?.questionSet == e2?.questionSet &&
        e1?.currentQuestionIndex == e2?.currentQuestionIndex;
  }

  @override
  int hash(RoomRecord? e) => const ListEquality().hash([
        e?.code,
        e?.host,
        e?.words,
        e?.isStarted,
        e?.createdAt,
        e?.questionSet,
        e?.currentQuestionIndex
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomRecord;
}
