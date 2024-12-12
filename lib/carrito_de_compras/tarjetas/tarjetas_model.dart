import '/flutter_flow/flutter_flow_util.dart';
import 'tarjetas_widget.dart' show TarjetasWidget;
import 'package:flutter/material.dart';

class TarjetasModel extends FlutterFlowModel<TarjetasWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNumeroTarjeta widget.
  FocusNode? txtNumeroTarjetaFocusNode;
  TextEditingController? txtNumeroTarjetaTextController;
  String? Function(BuildContext, String?)?
      txtNumeroTarjetaTextControllerValidator;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtVencimiento widget.
  FocusNode? txtVencimientoFocusNode;
  TextEditingController? txtVencimientoTextController;
  String? Function(BuildContext, String?)?
      txtVencimientoTextControllerValidator;
  // State field(s) for txtCvv widget.
  FocusNode? txtCvvFocusNode;
  TextEditingController? txtCvvTextController;
  String? Function(BuildContext, String?)? txtCvvTextControllerValidator;

  @override
  void initState(BuildContext context) {}

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
