import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlayersRecord extends FirestoreRecord {
  PlayersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "is_ready" field.
  bool? _isReady;
  bool get isReady => _isReady ?? false;
  bool hasIsReady() => _isReady != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _isReady = snapshotData['is_ready'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _email = snapshotData['email'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('players')
          : FirebaseFirestore.instance.collectionGroup('players');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('players').doc();

  static Stream<PlayersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlayersRecord.fromSnapshot(s));

  static Future<PlayersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlayersRecord.fromSnapshot(s));

  static PlayersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlayersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlayersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlayersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlayersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlayersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlayersRecordData({
  String? name,
  String? uid,
  bool? isReady,
  DateTime? createdAt,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'uid': uid,
      'is_ready': isReady,
      'created_at': createdAt,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlayersRecordDocumentEquality implements Equality<PlayersRecord> {
  const PlayersRecordDocumentEquality();

  @override
  bool equals(PlayersRecord? e1, PlayersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.uid == e2?.uid &&
        e1?.isReady == e2?.isReady &&
        e1?.createdAt == e2?.createdAt &&
        e1?.email == e2?.email;
  }

  @override
  int hash(PlayersRecord? e) => const ListEquality()
      .hash([e?.name, e?.uid, e?.isReady, e?.createdAt, e?.email]);

  @override
  bool isValidKey(Object? o) => o is PlayersRecord;
}
