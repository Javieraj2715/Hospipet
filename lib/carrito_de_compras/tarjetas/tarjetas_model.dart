import '/flutter_flow/flutter_flow_util.dart';
import 'tarjetas_widget.dart' show TarjetasWidget;
import 'package:flutter/material.dart';

class TarjetasModel extends FlutterFlowModel<TarjetasWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNumeroTarjeta widget.
  FocusNode? txtNumeroTarjetaFocusNode;
  TextEditingController? txtNumeroTarjetaTextController;
  String? Function(BuildContext, String?)?
      txtNumeroTarjetaTextControllerValidator;
  String? _txtNumeroTarjetaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 14) {
      return 'Caracteres minimo: 14';
    }
    if (val.length > 20) {
      return 'Maximum 20 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  String? _txtNombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtVencimiento widget.
  FocusNode? txtVencimientoFocusNode;
  TextEditingController? txtVencimientoTextController;
  String? Function(BuildContext, String?)?
      txtVencimientoTextControllerValidator;
  String? _txtVencimientoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(0[1-9]|1[0-2])\\/\\d{2}\$').hasMatch(val)) {
      return 'Introduce un formato válido: MM/AA';
    }
    return null;
  }

  // State field(s) for txtCvv widget.
  FocusNode? txtCvvFocusNode;
  TextEditingController? txtCvvTextController;
  String? Function(BuildContext, String?)? txtCvvTextControllerValidator;
  String? _txtCvvTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }
    if (val.length > 3) {
      return 'Maximum 3 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtNumeroTarjetaTextControllerValidator =
        _txtNumeroTarjetaTextControllerValidator;
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    txtVencimientoTextControllerValidator =
        _txtVencimientoTextControllerValidator;
    txtCvvTextControllerValidator = _txtCvvTextControllerValidator;
  }

  @override
  void dispose() {
    txtNumeroTarjetaFocusNode?.dispose();
    txtNumeroTarjetaTextController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtVencimientoFocusNode?.dispose();
    txtVencimientoTextController?.dispose();

    txtCvvFocusNode?.dispose();
    txtCvvTextController?.dispose();
  }
}
