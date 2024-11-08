import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "PRODUCTO_ID" field.
  int? _productoId;
  int get productoId => _productoId ?? 0;
  bool hasProductoId() => _productoId != null;

  // "NOMBRE_PRODUCTO" field.
  String? _nombreProducto;
  String get nombreProducto => _nombreProducto ?? '';
  bool hasNombreProducto() => _nombreProducto != null;

  // "PRECIO_UNITARIO" field.
  double? _precioUnitario;
  double get precioUnitario => _precioUnitario ?? 0.0;
  bool hasPrecioUnitario() => _precioUnitario != null;

  // "DETALLE_PRODUCTO" field.
  String? _detalleProducto;
  String get detalleProducto => _detalleProducto ?? '';
  bool hasDetalleProducto() => _detalleProducto != null;

  // "IMAGEN_PRODUCTO" field.
  String? _imagenProducto;
  String get imagenProducto => _imagenProducto ?? '';
  bool hasImagenProducto() => _imagenProducto != null;

  // "DESCRIPCION" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "CANTIDAD_DISPONIBLE" field.
  int? _cantidadDisponible;
  int get cantidadDisponible => _cantidadDisponible ?? 0;
  bool hasCantidadDisponible() => _cantidadDisponible != null;

  // "CATEGORIA" field.
  List<String>? _categoria;
  List<String> get categoria => _categoria ?? const [];
  bool hasCategoria() => _categoria != null;

  void _initializeFields() {
    _productoId = castToType<int>(snapshotData['PRODUCTO_ID']);
    _nombreProducto = snapshotData['NOMBRE_PRODUCTO'] as String?;
    _precioUnitario = castToType<double>(snapshotData['PRECIO_UNITARIO']);
    _detalleProducto = snapshotData['DETALLE_PRODUCTO'] as String?;
    _imagenProducto = snapshotData['IMAGEN_PRODUCTO'] as String?;
    _descripcion = snapshotData['DESCRIPCION'] as String?;
    _cantidadDisponible = castToType<int>(snapshotData['CANTIDAD_DISPONIBLE']);
    _categoria = getDataList(snapshotData['CATEGORIA']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  int? productoId,
  String? nombreProducto,
  double? precioUnitario,
  String? detalleProducto,
  String? imagenProducto,
  String? descripcion,
  int? cantidadDisponible,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PRODUCTO_ID': productoId,
      'NOMBRE_PRODUCTO': nombreProducto,
      'PRECIO_UNITARIO': precioUnitario,
      'DETALLE_PRODUCTO': detalleProducto,
      'IMAGEN_PRODUCTO': imagenProducto,
      'DESCRIPCION': descripcion,
      'CANTIDAD_DISPONIBLE': cantidadDisponible,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.productoId == e2?.productoId &&
        e1?.nombreProducto == e2?.nombreProducto &&
        e1?.precioUnitario == e2?.precioUnitario &&
        e1?.detalleProducto == e2?.detalleProducto &&
        e1?.imagenProducto == e2?.imagenProducto &&
        e1?.descripcion == e2?.descripcion &&
        e1?.cantidadDisponible == e2?.cantidadDisponible &&
        listEquality.equals(e1?.categoria, e2?.categoria);
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.productoId,
        e?.nombreProducto,
        e?.precioUnitario,
        e?.detalleProducto,
        e?.imagenProducto,
        e?.descripcion,
        e?.cantidadDisponible,
        e?.categoria
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
