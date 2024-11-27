import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubProductosRecord extends FirestoreRecord {
  SubProductosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  void _initializeFields() {
    _producto = snapshotData['producto'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _subTotal = castToType<double>(snapshotData['subTotal']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subProductos');

  static Stream<SubProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubProductosRecord.fromSnapshot(s));

  static Future<SubProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubProductosRecord.fromSnapshot(s));

  static SubProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubProductosRecordData({
  DocumentReference? producto,
  int? cantidad,
  double? subTotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'producto': producto,
      'cantidad': cantidad,
      'subTotal': subTotal,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubProductosRecordDocumentEquality
    implements Equality<SubProductosRecord> {
  const SubProductosRecordDocumentEquality();

  @override
  bool equals(SubProductosRecord? e1, SubProductosRecord? e2) {
    return e1?.producto == e2?.producto &&
        e1?.cantidad == e2?.cantidad &&
        e1?.subTotal == e2?.subTotal;
  }

  @override
  int hash(SubProductosRecord? e) =>
      const ListEquality().hash([e?.producto, e?.cantidad, e?.subTotal]);

  @override
  bool isValidKey(Object? o) => o is SubProductosRecord;
}
