import '/flutter_flow/flutter_flow_util.dart';
import 'editar_expediente_widget.dart' show EditarExpedienteWidget;
import 'package:flutter/material.dart';

class EditarExpedienteModel extends FlutterFlowModel<EditarExpedienteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for txtNombreCliente widget.
  FocusNode? txtNombreClienteFocusNode;
  TextEditingController? txtNombreClienteTextController;
  String? Function(BuildContext, String?)?
      txtNombreClienteTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  // State field(s) for txtCedula widget.
  FocusNode? txtCedulaFocusNode;
  TextEditingController? txtCedulaTextController;
  String? Function(BuildContext, String?)? txtCedulaTextControllerValidator;
  // State field(s) for txtNombreMascota widget.
  FocusNode? txtNombreMascotaFocusNode1;
  TextEditingController? txtNombreMascotaTextController1;
  String? Function(BuildContext, String?)?
      txtNombreMascotaTextController1Validator;
  // State field(s) for txtNombreMascota widget.
  FocusNode? txtNombreMascotaFocusNode2;
  TextEditingController? txtNombreMascotaTextController2;
  String? Function(BuildContext, String?)?
      txtNombreMascotaTextController2Validator;
  // State field(s) for txtNombreMascota widget.
  FocusNode? txtNombreMascotaFocusNode3;
  TextEditingController? txtNombreMascotaTextController3;
  String? Function(BuildContext, String?)?
      txtNombreMascotaTextController3Validator;
  // State field(s) for txtRaza widget.
  FocusNode? txtRazaFocusNode;
  TextEditingController? txtRazaTextController;
  String? Function(BuildContext, String?)? txtRazaTextControllerValidator;
  // State field(s) for txtPeso widget.
  FocusNode? txtPesoFocusNode;
  TextEditingController? txtPesoTextController;
  String? Function(BuildContext, String?)? txtPesoTextControllerValidator;
  // State field(s) for txtSexo widget.
  FocusNode? txtSexoFocusNode;
  TextEditingController? txtSexoTextController;
  String? Function(BuildContext, String?)? txtSexoTextControllerValidator;
  // State field(s) for txtAlergias widget.
  FocusNode? txtAlergiasFocusNode;
  TextEditingController? txtAlergiasTextController;
  String? Function(BuildContext, String?)? txtAlergiasTextControllerValidator;
  // State field(s) for txtMedicamentos widget.
  FocusNode? txtMedicamentosFocusNode;
  TextEditingController? txtMedicamentosTextController;
  String? Function(BuildContext, String?)?
      txtMedicamentosTextControllerValidator;
  // State field(s) for txtNotas widget.
  FocusNode? txtNotasFocusNode;
  TextEditingController? txtNotasTextController;
  String? Function(BuildContext, String?)? txtNotasTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreClienteFocusNode?.dispose();
    txtNombreClienteTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtCedulaFocusNode?.dispose();
    txtCedulaTextController?.dispose();

    txtNombreMascotaFocusNode1?.dispose();
    txtNombreMascotaTextController1?.dispose();

    txtNombreMascotaFocusNode2?.dispose();
    txtNombreMascotaTextController2?.dispose();

    txtNombreMascotaFocusNode3?.dispose();
    txtNombreMascotaTextController3?.dispose();

    txtRazaFocusNode?.dispose();
    txtRazaTextController?.dispose();

    txtPesoFocusNode?.dispose();
    txtPesoTextController?.dispose();

    txtSexoFocusNode?.dispose();
    txtSexoTextController?.dispose();

    txtAlergiasFocusNode?.dispose();
    txtAlergiasTextController?.dispose();

    txtMedicamentosFocusNode?.dispose();
    txtMedicamentosTextController?.dispose();

    txtNotasFocusNode?.dispose();
    txtNotasTextController?.dispose();
  }
}
