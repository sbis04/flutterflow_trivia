import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'host_page_widget.dart' show HostPageWidget;
import 'package:flutter/material.dart';

class HostPageModel extends FlutterFlowModel<HostPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  bool isQrEnlarged = false;

  bool isQuestionSetSelected = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDownSmall widget.
  String? dropDownSmallValue;
  FormFieldController<String>? dropDownSmallValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
