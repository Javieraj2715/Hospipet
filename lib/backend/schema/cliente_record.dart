import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteRecord extends FirestoreRecord {
  ClienteRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "CLIENTE_ID" field.
  int? _clienteId;
  int get clienteId => _clienteId ?? 0;
  bool hasClienteId() => _clienteId != null;

  // "NOMBRE" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "EMAIL" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "TELEFONO" field.
  int? _telefono;
  int get telefono => _telefono ?? 0;
  bool hasTelefono() => _telefono != null;

  // "CEDULA" field.
  String? _cedula;
  String get cedula => _cedula ?? '';
  bool hasCedula() => _cedula != null;

  // "APELLIDO1" field.
  String? _apellido1;
  String get apellido1 => _apellido1 ?? '';
  bool hasApellido1() => _apellido1 != null;

  // "APELLIDO2" field.
  String? _apellido2;
  String get apellido2 => _apellido2 ?? '';
  bool hasApellido2() => _apellido2 != null;

  // "DIRECCION" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  void _initializeFields() {
    _clienteId = castToType<int>(snapshotData['CLIENTE_ID']);
    _nombre = snapshotData['NOMBRE'] as String?;
    _email = snapshotData['EMAIL'] as String?;
    _telefono = castToType<int>(snapshotData['TELEFONO']);
    _cedula = snapshotData['CEDULA'] as String?;
    _apellido1 = snapshotData['APELLIDO1'] as String?;
    _apellido2 = snapshotData['APELLIDO2'] as String?;
    _direccion = snapshotData['DIRECCION'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cliente');

  static Stream<ClienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClienteRecord.fromSnapshot(s));

  static Future<ClienteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClienteRecord.fromSnapshot(s));

  static ClienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClienteRecordData({
  int? clienteId,
  String? nombre,
  String? email,
  int? telefono,
  String? cedula,
  String? apellido1,
  String? apellido2,
  String? direccion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CLIENTE_ID': clienteId,
      'NOMBRE': nombre,
      'EMAIL': email,
      'TELEFONO': telefono,
      'CEDULA': cedula,
      'APELLIDO1': apellido1,
      'APELLIDO2': apellido2,
      'DIRECCION': direccion,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClienteRecordDocumentEquality implements Equality<ClienteRecord> {
  const ClienteRecordDocumentEquality();

  @override
  bool equals(ClienteRecord? e1, ClienteRecord? e2) {
    return e1?.clienteId == e2?.clienteId &&
        e1?.nombre == e2?.nombre &&
        e1?.email == e2?.email &&
        e1?.telefono == e2?.telefono &&
        e1?.cedula == e2?.cedula &&
        e1?.apellido1 == e2?.apellido1 &&
        e1?.apellido2 == e2?.apellido2 &&
        e1?.direccion == e2?.direccion;
  }

  @override
  int hash(ClienteRecord? e) => const ListEquality().hash([
        e?.clienteId,
        e?.nombre,
        e?.email,
        e?.telefono,
        e?.cedula,
        e?.apellido1,
        e?.apellido2,
        e?.direccion
      ]);

  @override
  bool isValidKey(Object? o) => o is ClienteRecord;
}
