import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnionesRecord extends FirestoreRecord {
  UnionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NombrePropietario" field.
  String? _nombrePropietario;
  String get nombrePropietario => _nombrePropietario ?? '';
  bool hasNombrePropietario() => _nombrePropietario != null;

  // "CorreoElectronico" field.
  String? _correoElectronico;
  String get correoElectronico => _correoElectronico ?? '';
  bool hasCorreoElectronico() => _correoElectronico != null;

  // "Telefono" field.
  int? _telefono;
  int get telefono => _telefono ?? 0;
  bool hasTelefono() => _telefono != null;

  // "Cedula" field.
  String? _cedula;
  String get cedula => _cedula ?? '';
  bool hasCedula() => _cedula != null;

  // "NombreMascota" field.
  String? _nombreMascota;
  String get nombreMascota => _nombreMascota ?? '';
  bool hasNombreMascota() => _nombreMascota != null;

  // "TipoAnimal" field.
  String? _tipoAnimal;
  String get tipoAnimal => _tipoAnimal ?? '';
  bool hasTipoAnimal() => _tipoAnimal != null;

  // "Edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  void _initializeFields() {
    _nombrePropietario = snapshotData['NombrePropietario'] as String?;
    _correoElectronico = snapshotData['CorreoElectronico'] as String?;
    _telefono = castToType<int>(snapshotData['Telefono']);
    _cedula = snapshotData['Cedula'] as String?;
    _nombreMascota = snapshotData['NombreMascota'] as String?;
    _tipoAnimal = snapshotData['TipoAnimal'] as String?;
    _edad = castToType<int>(snapshotData['Edad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Uniones');

  static Stream<UnionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UnionesRecord.fromSnapshot(s));

  static Future<UnionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UnionesRecord.fromSnapshot(s));

  static UnionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UnionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UnionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UnionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UnionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UnionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUnionesRecordData({
  String? nombrePropietario,
  String? correoElectronico,
  int? telefono,
  String? cedula,
  String? nombreMascota,
  String? tipoAnimal,
  int? edad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NombrePropietario': nombrePropietario,
      'CorreoElectronico': correoElectronico,
      'Telefono': telefono,
      'Cedula': cedula,
      'NombreMascota': nombreMascota,
      'TipoAnimal': tipoAnimal,
      'Edad': edad,
    }.withoutNulls,
  );

  return firestoreData;
}

class UnionesRecordDocumentEquality implements Equality<UnionesRecord> {
  const UnionesRecordDocumentEquality();

  @override
  bool equals(UnionesRecord? e1, UnionesRecord? e2) {
    return e1?.nombrePropietario == e2?.nombrePropietario &&
        e1?.correoElectronico == e2?.correoElectronico &&
        e1?.telefono == e2?.telefono &&
        e1?.cedula == e2?.cedula &&
        e1?.nombreMascota == e2?.nombreMascota &&
        e1?.tipoAnimal == e2?.tipoAnimal &&
        e1?.edad == e2?.edad;
  }

  @override
  int hash(UnionesRecord? e) => const ListEquality().hash([
        e?.nombrePropietario,
        e?.correoElectronico,
        e?.telefono,
        e?.cedula,
        e?.nombreMascota,
        e?.tipoAnimal,
        e?.edad
      ]);

  @override
  bool isValidKey(Object? o) => o is UnionesRecord;
}
