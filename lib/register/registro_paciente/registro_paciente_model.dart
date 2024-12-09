import '/flutter_flow/flutter_flow_util.dart';
import 'registro_paciente_widget.dart' show RegistroPacienteWidget;
import 'package:flutter/material.dart';

class RegistroPacienteModel extends FlutterFlowModel<RegistroPacienteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombreCliente widget.
  FocusNode? txtNombreClienteFocusNode;
  TextEditingController? txtNombreClienteTextController;
  String? Function(BuildContext, String?)?
      txtNombreClienteTextControllerValidator;
  String? _txtNombreClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  String? _txtEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  String? _txtTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtCedula widget.
  FocusNode? txtCedulaFocusNode;
  TextEditingController? txtCedulaTextController;
  String? Function(BuildContext, String?)? txtCedulaTextControllerValidator;
  String? _txtCedulaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtNombreMascota widget.
  FocusNode? txtNombreMascotaFocusNode1;
  TextEditingController? txtNombreMascotaTextController1;
  String? Function(BuildContext, String?)?
      txtNombreMascotaTextController1Validator;
  String? _txtNombreMascotaTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtNombreMascota widget.
  FocusNode? txtNombreMascotaFocusNode2;
  TextEditingController? txtNombreMascotaTextController2;
  String? Function(BuildContext, String?)?
      txtNombreMascotaTextController2Validator;
  String? _txtNombreMascotaTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtNombreMascota widget.
  FocusNode? txtNombreMascotaFocusNode3;
  TextEditingController? txtNombreMascotaTextController3;
  String? Function(BuildContext, String?)?
      txtNombreMascotaTextController3Validator;
  String? _txtNombreMascotaTextController3Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtRaza widget.
  FocusNode? txtRazaFocusNode;
  TextEditingController? txtRazaTextController;
  String? Function(BuildContext, String?)? txtRazaTextControllerValidator;
  String? _txtRazaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtPeso widget.
  FocusNode? txtPesoFocusNode;
  TextEditingController? txtPesoTextController;
  String? Function(BuildContext, String?)? txtPesoTextControllerValidator;
  String? _txtPesoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtSexo widget.
  FocusNode? txtSexoFocusNode;
  TextEditingController? txtSexoTextController;
  String? Function(BuildContext, String?)? txtSexoTextControllerValidator;
  String? _txtSexoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtAlergias widget.
  FocusNode? txtAlergiasFocusNode;
  TextEditingController? txtAlergiasTextController;
  String? Function(BuildContext, String?)? txtAlergiasTextControllerValidator;
  String? _txtAlergiasTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtMedicamentos widget.
  FocusNode? txtMedicamentosFocusNode;
  TextEditingController? txtMedicamentosTextController;
  String? Function(BuildContext, String?)?
      txtMedicamentosTextControllerValidator;
  String? _txtMedicamentosTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtNotas widget.
  FocusNode? txtNotasFocusNode;
  TextEditingController? txtNotasTextController;
  String? Function(BuildContext, String?)? txtNotasTextControllerValidator;
  String? _txtNotasTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtNombreClienteTextControllerValidator =
        _txtNombreClienteTextControllerValidator;
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
    txtTelefonoTextControllerValidator = _txtTelefonoTextControllerValidator;
    txtCedulaTextControllerValidator = _txtCedulaTextControllerValidator;
    txtNombreMascotaTextController1Validator =
        _txtNombreMascotaTextController1Validator;
    txtNombreMascotaTextController2Validator =
        _txtNombreMascotaTextController2Validator;
    txtNombreMascotaTextController3Validator =
        _txtNombreMascotaTextController3Validator;
    txtRazaTextControllerValidator = _txtRazaTextControllerValidator;
    txtPesoTextControllerValidator = _txtPesoTextControllerValidator;
    txtSexoTextControllerValidator = _txtSexoTextControllerValidator;
    txtAlergiasTextControllerValidator = _txtAlergiasTextControllerValidator;
    txtMedicamentosTextControllerValidator =
        _txtMedicamentosTextControllerValidator;
    txtNotasTextControllerValidator = _txtNotasTextControllerValidator;
  }

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
