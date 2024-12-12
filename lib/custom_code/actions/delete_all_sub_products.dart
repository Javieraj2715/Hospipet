// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> deleteAllSubProducts() async {
  try {
    // Accede a la colección `subProductos`
    final collectionRef = FirebaseFirestore.instance.collection('subProductos');

    // Obtén todos los documentos en la colección
    final querySnapshot = await collectionRef.get();

    // Itera sobre cada documento y elimínalo
    for (final doc in querySnapshot.docs) {
      await doc.reference.delete();
    }
    print("Todos los productos han sido eliminados correctamente.");
  } catch (e) {
    print("Error al eliminar productos: $e");
    throw e;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
