import '/flutter_flow/flutter_flow_util.dart';
import 'crear_usuario_widget.dart' show CrearUsuarioWidget;
import 'package:flutter/material.dart';

class CrearUsuarioModel extends FlutterFlowModel<CrearUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtId widget.
  FocusNode? txtIdFocusNode;
  TextEditingController? txtIdTextController;
  String? Function(BuildContext, String?)? txtIdTextControllerValidator;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;
  // State field(s) for txtConfirmarPass widget.
  FocusNode? txtConfirmarPassFocusNode;
  TextEditingController? txtConfirmarPassTextController;
  late bool txtConfirmarPassVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmarPassTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtConfirmarPassVisibility = false;
  }

  @override
  void dispose() {
    txtIdFocusNode?.dispose();
    txtIdTextController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();

    txtConfirmarPassFocusNode?.dispose();
    txtConfirmarPassTextController?.dispose();
  }
}
