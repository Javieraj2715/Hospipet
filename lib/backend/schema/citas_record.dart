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

  // "nombre_mascota" field.
  String? _nombreMascota;
  String get nombreMascota => _nombreMascota ?? '';
  bool hasNombreMascota() => _nombreMascota != null;

  // "nombre_dueno" field.
  String? _nombreDueno;
  String get nombreDueno => _nombreDueno ?? '';
  bool hasNombreDueno() => _nombreDueno != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "hora" field.
  DateTime? _hora;
  DateTime? get hora => _hora;
  bool hasHora() => _hora != null;

  // "nombre_veterinario" field.
  String? _nombreVeterinario;
  String get nombreVeterinario => _nombreVeterinario ?? '';
  bool hasNombreVeterinario() => _nombreVeterinario != null;

  // "tipo_cita" field.
  String? _tipoCita;
  String get tipoCita => _tipoCita ?? '';
  bool hasTipoCita() => _tipoCita != null;

  // "notas_adicionales" field.
  String? _notasAdicionales;
  String get notasAdicionales => _notasAdicionales ?? '';
  bool hasNotasAdicionales() => _notasAdicionales != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "isAppointmentAvailable" field.
  bool? _isAppointmentAvailable;
  bool get isAppointmentAvailable => _isAppointmentAvailable ?? false;
  bool hasIsAppointmentAvailable() => _isAppointmentAvailable != null;

  void _initializeFields() {
    _nombreMascota = snapshotData['nombre_mascota'] as String?;
    _nombreDueno = snapshotData['nombre_dueno'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _hora = snapshotData['hora'] as DateTime?;
    _nombreVeterinario = snapshotData['nombre_veterinario'] as String?;
    _tipoCita = snapshotData['tipo_cita'] as String?;
    _notasAdicionales = snapshotData['notas_adicionales'] as String?;
    _estado = snapshotData['estado'] as String?;
    _isAppointmentAvailable = snapshotData['isAppointmentAvailable'] as bool?;
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
  String? nombreDueno,
  DateTime? fecha,
  DateTime? hora,
  String? nombreVeterinario,
  String? tipoCita,
  String? notasAdicionales,
  String? estado,
  bool? isAppointmentAvailable,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_mascota': nombreMascota,
      'nombre_dueno': nombreDueno,
      'fecha': fecha,
      'hora': hora,
      'nombre_veterinario': nombreVeterinario,
      'tipo_cita': tipoCita,
      'notas_adicionales': notasAdicionales,
      'estado': estado,
      'isAppointmentAvailable': isAppointmentAvailable,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.nombreMascota == e2?.nombreMascota &&
        e1?.nombreDueno == e2?.nombreDueno &&
        e1?.fecha == e2?.fecha &&
        e1?.hora == e2?.hora &&
        e1?.nombreVeterinario == e2?.nombreVeterinario &&
        e1?.tipoCita == e2?.tipoCita &&
        e1?.notasAdicionales == e2?.notasAdicionales &&
        e1?.estado == e2?.estado &&
        e1?.isAppointmentAvailable == e2?.isAppointmentAvailable;
  }

  @override
  int hash(CitasRecord? e) => const ListEquality().hash([
        e?.nombreMascota,
        e?.nombreDueno,
        e?.fecha,
        e?.hora,
        e?.nombreVeterinario,
        e?.tipoCita,
        e?.notasAdicionales,
        e?.estado,
        e?.isAppointmentAvailable
      ]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
