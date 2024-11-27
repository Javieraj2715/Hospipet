import '/flutter_flow/flutter_flow_util.dart';
import 'gestionar_citas_widget.dart' show GestionarCitasWidget;
import 'package:flutter/material.dart';

class GestionarCitasModel extends FlutterFlowModel<GestionarCitasWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TxtBuscarCita widget.
  FocusNode? txtBuscarCitaFocusNode;
  TextEditingController? txtBuscarCitaTextController;
  String? Function(BuildContext, String?)? txtBuscarCitaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtBuscarCitaFocusNode?.dispose();
    txtBuscarCitaTextController?.dispose();
  }
}
