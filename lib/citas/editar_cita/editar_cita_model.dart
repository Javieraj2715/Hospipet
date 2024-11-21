import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_cita_widget.dart' show EditarCitaWidget;
import 'package:flutter/material.dart';

class EditarCitaModel extends FlutterFlowModel<EditarCitaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
  // State field(s) for TxtNombreVeterinario widget.
  FocusNode? txtNombreVeterinarioFocusNode;
  TextEditingController? txtNombreVeterinarioTextController;
  String? Function(BuildContext, String?)?
      txtNombreVeterinarioTextControllerValidator;
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
  void initState(BuildContext context) {}

  @override
  void dispose() {
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
