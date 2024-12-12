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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

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
  String? _edad;
  String get edad => _edad ?? '';
  bool hasEdad() => _edad != null;

  // "Raza" field.
  String? _raza;
  String get raza => _raza ?? '';
  bool hasRaza() => _raza != null;

  // "Peso" field.
  String? _peso;
  String get peso => _peso ?? '';
  bool hasPeso() => _peso != null;

  // "AlergiasConocidas" field.
  String? _alergiasConocidas;
  String get alergiasConocidas => _alergiasConocidas ?? '';
  bool hasAlergiasConocidas() => _alergiasConocidas != null;

  // "MedicamentosActuales" field.
  String? _medicamentosActuales;
  String get medicamentosActuales => _medicamentosActuales ?? '';
  bool hasMedicamentosActuales() => _medicamentosActuales != null;

  // "NotasAdicionales" field.
  String? _notasAdicionales;
  String get notasAdicionales => _notasAdicionales ?? '';
  bool hasNotasAdicionales() => _notasAdicionales != null;

  // "Sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _userName = snapshotData['user_name'] as String?;
    _cedula = snapshotData['Cedula'] as String?;
    _nombreMascota = snapshotData['NombreMascota'] as String?;
    _tipoAnimal = snapshotData['TipoAnimal'] as String?;
    _edad = snapshotData['Edad'] as String?;
    _raza = snapshotData['Raza'] as String?;
    _peso = snapshotData['Peso'] as String?;
    _alergiasConocidas = snapshotData['AlergiasConocidas'] as String?;
    _medicamentosActuales = snapshotData['MedicamentosActuales'] as String?;
    _notasAdicionales = snapshotData['NotasAdicionales'] as String?;
    _sexo = snapshotData['Sexo'] as String?;
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
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? userName,
  String? cedula,
  String? nombreMascota,
  String? tipoAnimal,
  String? edad,
  String? raza,
  String? peso,
  String? alergiasConocidas,
  String? medicamentosActuales,
  String? notasAdicionales,
  String? sexo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'user_name': userName,
      'Cedula': cedula,
      'NombreMascota': nombreMascota,
      'TipoAnimal': tipoAnimal,
      'Edad': edad,
      'Raza': raza,
      'Peso': peso,
      'AlergiasConocidas': alergiasConocidas,
      'MedicamentosActuales': medicamentosActuales,
      'NotasAdicionales': notasAdicionales,
      'Sexo': sexo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UnionesRecordDocumentEquality implements Equality<UnionesRecord> {
  const UnionesRecordDocumentEquality();

  @override
  bool equals(UnionesRecord? e1, UnionesRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.userName == e2?.userName &&
        e1?.cedula == e2?.cedula &&
        e1?.nombreMascota == e2?.nombreMascota &&
        e1?.tipoAnimal == e2?.tipoAnimal &&
        e1?.edad == e2?.edad &&
        e1?.raza == e2?.raza &&
        e1?.peso == e2?.peso &&
        e1?.alergiasConocidas == e2?.alergiasConocidas &&
        e1?.medicamentosActuales == e2?.medicamentosActuales &&
        e1?.notasAdicionales == e2?.notasAdicionales &&
        e1?.sexo == e2?.sexo;
  }

  @override
  int hash(UnionesRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.userName,
        e?.cedula,
        e?.nombreMascota,
        e?.tipoAnimal,
        e?.edad,
        e?.raza,
        e?.peso,
        e?.alergiasConocidas,
        e?.medicamentosActuales,
        e?.notasAdicionales,
        e?.sexo
      ]);

  @override
  bool isValidKey(Object? o) => o is UnionesRecord;
}
