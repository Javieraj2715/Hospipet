import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  dynamic _selectedCard = jsonDecode(
      '{\"nombreTitular\":\"String\",\"numTarjeta\":\"String\",\"fechaVencimiento\":\"String\",\"docRef\":\"Document Reference\"}');
  dynamic get selectedCard => _selectedCard;
  set selectedCard(dynamic value) {
    _selectedCard = value;
  }

  bool _showError = false;
  bool get showError => _showError;
  set showError(bool value) {
    _showError = value;
  }

  double _TotalAppState = 0.0;
  double get TotalAppState => _TotalAppState;
  set TotalAppState(double value) {
    _TotalAppState = value;
  }
}
