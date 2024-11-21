import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "telefono" field.
  int? _telefono;
  int get telefono => _telefono ?? 0;
  bool hasTelefono() => _telefono != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "confirmPass" field.
  String? _confirmPass;
  String get confirmPass => _confirmPass ?? '';
  bool hasConfirmPass() => _confirmPass != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "idUsuario" field.
  int? _idUsuario;
  int get idUsuario => _idUsuario ?? 0;
  bool hasIdUsuario() => _idUsuario != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _email = snapshotData['email'] as String?;
    _telefono = castToType<int>(snapshotData['telefono']);
    _password = snapshotData['password'] as String?;
    _confirmPass = snapshotData['confirmPass'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _idUsuario = castToType<int>(snapshotData['idUsuario']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? nombre,
  String? email,
  int? telefono,
  String? password,
  String? confirmPass,
  String? imagen,
  int? idUsuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'email': email,
      'telefono': telefono,
      'password': password,
      'confirmPass': confirmPass,
      'imagen': imagen,
      'idUsuario': idUsuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.email == e2?.email &&
        e1?.telefono == e2?.telefono &&
        e1?.password == e2?.password &&
        e1?.confirmPass == e2?.confirmPass &&
        e1?.imagen == e2?.imagen &&
        e1?.idUsuario == e2?.idUsuario;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.email,
        e?.telefono,
        e?.password,
        e?.confirmPass,
        e?.imagen,
        e?.idUsuario
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
