import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProveedoresRecord extends FirestoreRecord {
  ProveedoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "PROVEEDOR_ID" field.
  int? _proveedorId;
  int get proveedorId => _proveedorId ?? 0;
  bool hasProveedorId() => _proveedorId != null;

  // "NOMBRE_PROVEEDOR" field.
  String? _nombreProveedor;
  String get nombreProveedor => _nombreProveedor ?? '';
  bool hasNombreProveedor() => _nombreProveedor != null;

  // "DIRECCION" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "TELEFONO" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "CORREO_ELECTRONICO" field.
  String? _correoElectronico;
  String get correoElectronico => _correoElectronico ?? '';
  bool hasCorreoElectronico() => _correoElectronico != null;

  void _initializeFields() {
    _proveedorId = castToType<int>(snapshotData['PROVEEDOR_ID']);
    _nombreProveedor = snapshotData['NOMBRE_PROVEEDOR'] as String?;
    _direccion = snapshotData['DIRECCION'] as String?;
    _telefono = snapshotData['TELEFONO'] as String?;
    _correoElectronico = snapshotData['CORREO_ELECTRONICO'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('proveedores');

  static Stream<ProveedoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProveedoresRecord.fromSnapshot(s));

  static Future<ProveedoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProveedoresRecord.fromSnapshot(s));

  static ProveedoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProveedoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProveedoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProveedoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProveedoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProveedoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProveedoresRecordData({
  int? proveedorId,
  String? nombreProveedor,
  String? direccion,
  String? telefono,
  String? correoElectronico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PROVEEDOR_ID': proveedorId,
      'NOMBRE_PROVEEDOR': nombreProveedor,
      'DIRECCION': direccion,
      'TELEFONO': telefono,
      'CORREO_ELECTRONICO': correoElectronico,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProveedoresRecordDocumentEquality implements Equality<ProveedoresRecord> {
  const ProveedoresRecordDocumentEquality();

  @override
  bool equals(ProveedoresRecord? e1, ProveedoresRecord? e2) {
    return e1?.proveedorId == e2?.proveedorId &&
        e1?.nombreProveedor == e2?.nombreProveedor &&
        e1?.direccion == e2?.direccion &&
        e1?.telefono == e2?.telefono &&
        e1?.correoElectronico == e2?.correoElectronico;
  }

  @override
  int hash(ProveedoresRecord? e) => const ListEquality().hash([
        e?.proveedorId,
        e?.nombreProveedor,
        e?.direccion,
        e?.telefono,
        e?.correoElectronico
      ]);

  @override
  bool isValidKey(Object? o) => o is ProveedoresRecord;
}
