import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MascotaRecord extends FirestoreRecord {
  MascotaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ANIMAL_ID" field.
  int? _animalId;
  int get animalId => _animalId ?? 0;
  bool hasAnimalId() => _animalId != null;

  // "ANIMAL" field.
  String? _animal;
  String get animal => _animal ?? '';
  bool hasAnimal() => _animal != null;

  // "NOMBRE_MASCOTA" field.
  String? _nombreMascota;
  String get nombreMascota => _nombreMascota ?? '';
  bool hasNombreMascota() => _nombreMascota != null;

  // "RAZA" field.
  String? _raza;
  String get raza => _raza ?? '';
  bool hasRaza() => _raza != null;

  // "PESO" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "FECHA_NACIMIENTO" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "SEXO" field.
  List<String>? _sexo;
  List<String> get sexo => _sexo ?? const [];
  bool hasSexo() => _sexo != null;

  void _initializeFields() {
    _animalId = castToType<int>(snapshotData['ANIMAL_ID']);
    _animal = snapshotData['ANIMAL'] as String?;
    _nombreMascota = snapshotData['NOMBRE_MASCOTA'] as String?;
    _raza = snapshotData['RAZA'] as String?;
    _peso = castToType<double>(snapshotData['PESO']);
    _fechaNacimiento = snapshotData['FECHA_NACIMIENTO'] as DateTime?;
    _sexo = getDataList(snapshotData['SEXO']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mascota');

  static Stream<MascotaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MascotaRecord.fromSnapshot(s));

  static Future<MascotaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MascotaRecord.fromSnapshot(s));

  static MascotaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MascotaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MascotaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MascotaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MascotaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MascotaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMascotaRecordData({
  int? animalId,
  String? animal,
  String? nombreMascota,
  String? raza,
  double? peso,
  DateTime? fechaNacimiento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ANIMAL_ID': animalId,
      'ANIMAL': animal,
      'NOMBRE_MASCOTA': nombreMascota,
      'RAZA': raza,
      'PESO': peso,
      'FECHA_NACIMIENTO': fechaNacimiento,
    }.withoutNulls,
  );

  return firestoreData;
}

class MascotaRecordDocumentEquality implements Equality<MascotaRecord> {
  const MascotaRecordDocumentEquality();

  @override
  bool equals(MascotaRecord? e1, MascotaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.animalId == e2?.animalId &&
        e1?.animal == e2?.animal &&
        e1?.nombreMascota == e2?.nombreMascota &&
        e1?.raza == e2?.raza &&
        e1?.peso == e2?.peso &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        listEquality.equals(e1?.sexo, e2?.sexo);
  }

  @override
  int hash(MascotaRecord? e) => const ListEquality().hash([
        e?.animalId,
        e?.animal,
        e?.nombreMascota,
        e?.raza,
        e?.peso,
        e?.fechaNacimiento,
        e?.sexo
      ]);

  @override
  bool isValidKey(Object? o) => o is MascotaRecord;
}
