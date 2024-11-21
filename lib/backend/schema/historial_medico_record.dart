import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialMedicoRecord extends FirestoreRecord {
  HistorialMedicoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Alergias" field.
  String? _alergias;
  String get alergias => _alergias ?? '';
  bool hasAlergias() => _alergias != null;

  // "Medicamentos" field.
  String? _medicamentos;
  String get medicamentos => _medicamentos ?? '';
  bool hasMedicamentos() => _medicamentos != null;

  // "Notas" field.
  String? _notas;
  String get notas => _notas ?? '';
  bool hasNotas() => _notas != null;

  void _initializeFields() {
    _alergias = snapshotData['Alergias'] as String?;
    _medicamentos = snapshotData['Medicamentos'] as String?;
    _notas = snapshotData['Notas'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HistorialMedico');

  static Stream<HistorialMedicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistorialMedicoRecord.fromSnapshot(s));

  static Future<HistorialMedicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistorialMedicoRecord.fromSnapshot(s));

  static HistorialMedicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistorialMedicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistorialMedicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistorialMedicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistorialMedicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistorialMedicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistorialMedicoRecordData({
  String? alergias,
  String? medicamentos,
  String? notas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Alergias': alergias,
      'Medicamentos': medicamentos,
      'Notas': notas,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistorialMedicoRecordDocumentEquality
    implements Equality<HistorialMedicoRecord> {
  const HistorialMedicoRecordDocumentEquality();

  @override
  bool equals(HistorialMedicoRecord? e1, HistorialMedicoRecord? e2) {
    return e1?.alergias == e2?.alergias &&
        e1?.medicamentos == e2?.medicamentos &&
        e1?.notas == e2?.notas;
  }

  @override
  int hash(HistorialMedicoRecord? e) =>
      const ListEquality().hash([e?.alergias, e?.medicamentos, e?.notas]);

  @override
  bool isValidKey(Object? o) => o is HistorialMedicoRecord;
}
