import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreMascota" field.
  String? _nombreMascota;
  String get nombreMascota => _nombreMascota ?? '';
  bool hasNombreMascota() => _nombreMascota != null;

  // "tipoSevicio" field.
  String? _tipoSevicio;
  String get tipoSevicio => _tipoSevicio ?? '';
  bool hasTipoSevicio() => _tipoSevicio != null;

  // "notasAdicionales" field.
  String? _notasAdicionales;
  String get notasAdicionales => _notasAdicionales ?? '';
  bool hasNotasAdicionales() => _notasAdicionales != null;

  // "nombreDuenno" field.
  String? _nombreDuenno;
  String get nombreDuenno => _nombreDuenno ?? '';
  bool hasNombreDuenno() => _nombreDuenno != null;

  // "nombreVeterinario" field.
  String? _nombreVeterinario;
  String get nombreVeterinario => _nombreVeterinario ?? '';
  bool hasNombreVeterinario() => _nombreVeterinario != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "estadoSeleccionado" field.
  String? _estadoSeleccionado;
  String get estadoSeleccionado => _estadoSeleccionado ?? '';
  bool hasEstadoSeleccionado() => _estadoSeleccionado != null;

  // "cita_ID" field.
  int? _citaID;
  int get citaID => _citaID ?? 0;
  bool hasCitaID() => _citaID != null;

  // "fecha_hora" field.
  DateTime? _fechaHora;
  DateTime? get fechaHora => _fechaHora;
  bool hasFechaHora() => _fechaHora != null;

  void _initializeFields() {
    _nombreMascota = snapshotData['nombreMascota'] as String?;
    _tipoSevicio = snapshotData['tipoSevicio'] as String?;
    _notasAdicionales = snapshotData['notasAdicionales'] as String?;
    _nombreDuenno = snapshotData['nombreDuenno'] as String?;
    _nombreVeterinario = snapshotData['nombreVeterinario'] as String?;
    _estado = snapshotData['estado'] as String?;
    _estadoSeleccionado = snapshotData['estadoSeleccionado'] as String?;
    _citaID = castToType<int>(snapshotData['cita_ID']);
    _fechaHora = snapshotData['fecha_hora'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('citas');

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasRecordData({
  String? nombreMascota,
  String? tipoSevicio,
  String? notasAdicionales,
  String? nombreDuenno,
  String? nombreVeterinario,
  String? estado,
  String? estadoSeleccionado,
  int? citaID,
  DateTime? fechaHora,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreMascota': nombreMascota,
      'tipoSevicio': tipoSevicio,
      'notasAdicionales': notasAdicionales,
      'nombreDuenno': nombreDuenno,
      'nombreVeterinario': nombreVeterinario,
      'estado': estado,
      'estadoSeleccionado': estadoSeleccionado,
      'cita_ID': citaID,
      'fecha_hora': fechaHora,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.nombreMascota == e2?.nombreMascota &&
        e1?.tipoSevicio == e2?.tipoSevicio &&
        e1?.notasAdicionales == e2?.notasAdicionales &&
        e1?.nombreDuenno == e2?.nombreDuenno &&
        e1?.nombreVeterinario == e2?.nombreVeterinario &&
        e1?.estado == e2?.estado &&
        e1?.estadoSeleccionado == e2?.estadoSeleccionado &&
        e1?.citaID == e2?.citaID &&
        e1?.fechaHora == e2?.fechaHora;
  }

  @override
  int hash(CitasRecord? e) => const ListEquality().hash([
        e?.nombreMascota,
        e?.tipoSevicio,
        e?.notasAdicionales,
        e?.nombreDuenno,
        e?.nombreVeterinario,
        e?.estado,
        e?.estadoSeleccionado,
        e?.citaID,
        e?.fechaHora
      ]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
