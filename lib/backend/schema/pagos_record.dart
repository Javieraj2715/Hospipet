import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagosRecord extends FirestoreRecord {
  PagosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "fechaPago" field.
  DateTime? _fechaPago;
  DateTime? get fechaPago => _fechaPago;
  bool hasFechaPago() => _fechaPago != null;

  // "tarjeta" field.
  DocumentReference? _tarjeta;
  DocumentReference? get tarjeta => _tarjeta;
  bool hasTarjeta() => _tarjeta != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
    _fechaPago = snapshotData['fechaPago'] as DateTime?;
    _tarjeta = snapshotData['tarjeta'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pagos');

  static Stream<PagosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagosRecord.fromSnapshot(s));

  static Future<PagosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagosRecord.fromSnapshot(s));

  static PagosRecord fromSnapshot(DocumentSnapshot snapshot) => PagosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagosRecordData({
  String? userId,
  double? monto,
  DateTime? fechaPago,
  DocumentReference? tarjeta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'monto': monto,
      'fechaPago': fechaPago,
      'tarjeta': tarjeta,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagosRecordDocumentEquality implements Equality<PagosRecord> {
  const PagosRecordDocumentEquality();

  @override
  bool equals(PagosRecord? e1, PagosRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.monto == e2?.monto &&
        e1?.fechaPago == e2?.fechaPago &&
        e1?.tarjeta == e2?.tarjeta;
  }

  @override
  int hash(PagosRecord? e) => const ListEquality()
      .hash([e?.userId, e?.monto, e?.fechaPago, e?.tarjeta]);

  @override
  bool isValidKey(Object? o) => o is PagosRecord;
}
