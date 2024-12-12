import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double sumarSubtotal(
  double valorSubtotal,
  double precio,
) {
  valorSubtotal = valorSubtotal + precio;
  return valorSubtotal;
}

double restarSubtotal(
  double valorSubtotal,
  double precio,
) {
  if (valorSubtotal > 0) {
    valorSubtotal = valorSubtotal - precio;
  }
  return valorSubtotal;
}

double totalList(List<double> subTotal) {
  double total = 0;
  for (double add in subTotal) {
    total += add;
  }

  return total;
}

double calcularSubtotal(
  double precio,
  int cantidad,
) {
  return precio * cantidad;
}

bool isCartEmpty(double total) {
  return total == 0;
}

String getLast4Digits(String cardNumber) {
// Elimina los espacios en blanco por si el número incluye separadores
  String sanitized = cardNumber.replaceAll(' ', '');
  // Verifica que el número tiene al menos 4 dígitos
  if (sanitized.length >= 4) {
    return sanitized.substring(sanitized.length - 4);
  }
  return '0000'; // Valor por defecto si el número no es válido
}
