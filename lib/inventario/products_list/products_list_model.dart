import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'products_list_widget.dart' show ProductsListWidget;
import 'package:flutter/material.dart';

class ProductsListModel extends FlutterFlowModel<ProductsListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in btnAgregarCarrito widget.
  SubProductosRecord? subproducto;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
