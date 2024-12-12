import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarjetasRecord extends FirestoreRecord {
  TarjetasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreTitular" field.
  String? _nombreTitular;
  String get nombreTitular => _nombreTitular ?? '';
  bool hasNombreTitular() => _nombreTitular != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "fechaVencimiento" field.
  String? _fechaVencimiento;
  String get fechaVencimiento => _fechaVencimiento ?? '';
  bool hasFechaVencimiento() => _fechaVencimiento != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "numTarjeta" field.
  String? _numTarjeta;
  String get numTarjeta => _numTarjeta ?? '';
  bool hasNumTarjeta() => _numTarjeta != null;

  void _initializeFields() {
    _nombreTitular = snapshotData['nombreTitular'] as String?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _fechaVencimiento = snapshotData['fechaVencimiento'] as String?;
    _userId = snapshotData['userId'] as String?;
    _numTarjeta = snapshotData['numTarjeta'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tarjetas');

  static Stream<TarjetasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarjetasRecord.fromSnapshot(s));

  static Future<TarjetasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarjetasRecord.fromSnapshot(s));

  static TarjetasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarjetasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarjetasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarjetasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarjetasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarjetasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarjetasRecordData({
  String? nombreTitular,
  DateTime? fechaCreacion,
  String? fechaVencimiento,
  String? userId,
  String? numTarjeta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreTitular': nombreTitular,
      'fechaCreacion': fechaCreacion,
      'fechaVencimiento': fechaVencimiento,
      'userId': userId,
      'numTarjeta': numTarjeta,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarjetasRecordDocumentEquality implements Equality<TarjetasRecord> {
  const TarjetasRecordDocumentEquality();

  @override
  bool equals(TarjetasRecord? e1, TarjetasRecord? e2) {
    return e1?.nombreTitular == e2?.nombreTitular &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.fechaVencimiento == e2?.fechaVencimiento &&
        e1?.userId == e2?.userId &&
        e1?.numTarjeta == e2?.numTarjeta;
  }

  @override
  int hash(TarjetasRecord? e) => const ListEquality().hash([
        e?.nombreTitular,
        e?.fechaCreacion,
        e?.fechaVencimiento,
        e?.userId,
        e?.numTarjeta
      ]);

  @override
  bool isValidKey(Object? o) => o is TarjetasRecord;
}
