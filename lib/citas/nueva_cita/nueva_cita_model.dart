import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'nueva_cita_widget.dart' show NuevaCitaWidget;
import 'package:flutter/material.dart';

class NuevaCitaModel extends FlutterFlowModel<NuevaCitaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtIdCita widget.
  FocusNode? txtIdCitaFocusNode;
  TextEditingController? txtIdCitaTextController;
  String? Function(BuildContext, String?)? txtIdCitaTextControllerValidator;
  String? _txtIdCitaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TxtNombreDueno widget.
  FocusNode? txtNombreDuenoFocusNode;
  TextEditingController? txtNombreDuenoTextController;
  String? Function(BuildContext, String?)?
      txtNombreDuenoTextControllerValidator;
  // State field(s) for TxtNombreMascota widget.
  FocusNode? txtNombreMascotaFocusNode;
  TextEditingController? txtNombreMascotaTextController;
  String? Function(BuildContext, String?)?
      txtNombreMascotaTextControllerValidator;
  String? _txtNombreMascotaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TxtNombreVeterinario widget.
  FocusNode? txtNombreVeterinarioFocusNode;
  TextEditingController? txtNombreVeterinarioTextController;
  String? Function(BuildContext, String?)?
      txtNombreVeterinarioTextControllerValidator;
  String? _txtNombreVeterinarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for DropDownTipoServicio widget.
  String? dropDownTipoServicioValue;
  FormFieldController<String>? dropDownTipoServicioValueController;
  // State field(s) for TxtNotasAdiconales widget.
  FocusNode? txtNotasAdiconalesFocusNode;
  TextEditingController? txtNotasAdiconalesTextController;
  String? Function(BuildContext, String?)?
      txtNotasAdiconalesTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtIdCitaTextControllerValidator = _txtIdCitaTextControllerValidator;
    txtNombreMascotaTextControllerValidator =
        _txtNombreMascotaTextControllerValidator;
    txtNombreVeterinarioTextControllerValidator =
        _txtNombreVeterinarioTextControllerValidator;
  }

  @override
  void dispose() {
    txtIdCitaFocusNode?.dispose();
    txtIdCitaTextController?.dispose();

    txtNombreDuenoFocusNode?.dispose();
    txtNombreDuenoTextController?.dispose();

    txtNombreMascotaFocusNode?.dispose();
    txtNombreMascotaTextController?.dispose();

    txtNombreVeterinarioFocusNode?.dispose();
    txtNombreVeterinarioTextController?.dispose();

    txtNotasAdiconalesFocusNode?.dispose();
    txtNotasAdiconalesTextController?.dispose();
  }
}
