import '/flutter_flow/flutter_flow_util.dart';
import 'editar_productos_widget.dart' show EditarProductosWidget;
import 'package:flutter/material.dart';

class EditarProductosModel extends FlutterFlowModel<EditarProductosWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtId widget.
  FocusNode? txtIdFocusNode;
  TextEditingController? txtIdTextController;
  String? Function(BuildContext, String?)? txtIdTextControllerValidator;
  // State field(s) for txtNombreP widget.
  FocusNode? txtNombrePFocusNode;
  TextEditingController? txtNombrePTextController;
  String? Function(BuildContext, String?)? txtNombrePTextControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtIdFocusNode?.dispose();
    txtIdTextController?.dispose();

    txtNombrePFocusNode?.dispose();
    txtNombrePTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();

    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();
  }
}
