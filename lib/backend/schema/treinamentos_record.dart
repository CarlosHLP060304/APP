import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinamentosRecord extends FirestoreRecord {
  TreinamentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "cargahoraria" field.
  int? _cargahoraria;
  int get cargahoraria => _cargahoraria ?? 0;
  bool hasCargahoraria() => _cargahoraria != null;

  // "links" field.
  List<String>? _links;
  List<String> get links => _links ?? const [];
  bool hasLinks() => _links != null;

  // "sala" field.
  int? _sala;
  int get sala => _sala ?? 0;
  bool hasSala() => _sala != null;

  // "professor" field.
  String? _professor;
  String get professor => _professor ?? '';
  bool hasProfessor() => _professor != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "integrantes" field.
  List<String>? _integrantes;
  List<String> get integrantes => _integrantes ?? const [];
  bool hasIntegrantes() => _integrantes != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _cargahoraria = castToType<int>(snapshotData['cargahoraria']);
    _links = getDataList(snapshotData['links']);
    _sala = castToType<int>(snapshotData['sala']);
    _professor = snapshotData['professor'] as String?;
    _data = snapshotData['data'] as String?;
    _horario = snapshotData['horario'] as String?;
    _integrantes = getDataList(snapshotData['integrantes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treinamentos');

  static Stream<TreinamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreinamentosRecord.fromSnapshot(s));

  static Future<TreinamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreinamentosRecord.fromSnapshot(s));

  static TreinamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreinamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreinamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreinamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreinamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreinamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreinamentosRecordData({
  String? titulo,
  String? descricao,
  int? cargahoraria,
  int? sala,
  String? professor,
  String? data,
  String? horario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descricao': descricao,
      'cargahoraria': cargahoraria,
      'sala': sala,
      'professor': professor,
      'data': data,
      'horario': horario,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreinamentosRecordDocumentEquality
    implements Equality<TreinamentosRecord> {
  const TreinamentosRecordDocumentEquality();

  @override
  bool equals(TreinamentosRecord? e1, TreinamentosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.titulo == e2?.titulo &&
        e1?.descricao == e2?.descricao &&
        e1?.cargahoraria == e2?.cargahoraria &&
        listEquality.equals(e1?.links, e2?.links) &&
        e1?.sala == e2?.sala &&
        e1?.professor == e2?.professor &&
        e1?.data == e2?.data &&
        e1?.horario == e2?.horario &&
        listEquality.equals(e1?.integrantes, e2?.integrantes);
  }

  @override
  int hash(TreinamentosRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descricao,
        e?.cargahoraria,
        e?.links,
        e?.sala,
        e?.professor,
        e?.data,
        e?.horario,
        e?.integrantes
      ]);

  @override
  bool isValidKey(Object? o) => o is TreinamentosRecord;
}
