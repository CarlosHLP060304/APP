import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatusRecord extends FirestoreRecord {
  StatusRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "treinamento" field.
  String? _treinamento;
  String get treinamento => _treinamento ?? '';
  bool hasTreinamento() => _treinamento != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  void _initializeFields() {
    _treinamento = snapshotData['treinamento'] as String?;
    _status = snapshotData['status'] as String?;
    _data = snapshotData['data'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('status');

  static Stream<StatusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StatusRecord.fromSnapshot(s));

  static Future<StatusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StatusRecord.fromSnapshot(s));

  static StatusRecord fromSnapshot(DocumentSnapshot snapshot) => StatusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StatusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StatusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StatusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StatusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStatusRecordData({
  String? treinamento,
  String? status,
  String? data,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'treinamento': treinamento,
      'status': status,
      'data': data,
    }.withoutNulls,
  );

  return firestoreData;
}

class StatusRecordDocumentEquality implements Equality<StatusRecord> {
  const StatusRecordDocumentEquality();

  @override
  bool equals(StatusRecord? e1, StatusRecord? e2) {
    return e1?.treinamento == e2?.treinamento &&
        e1?.status == e2?.status &&
        e1?.data == e2?.data;
  }

  @override
  int hash(StatusRecord? e) =>
      const ListEquality().hash([e?.treinamento, e?.status, e?.data]);

  @override
  bool isValidKey(Object? o) => o is StatusRecord;
}
