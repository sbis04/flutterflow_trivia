import '/flutter_flow/flutter_flow_util.dart';
import 'question_edit_bottom_sheet_widget.dart'
    show QuestionEditBottomSheetWidget;
import 'package:flutter/material.dart';

class QuestionEditBottomSheetModel
    extends FlutterFlowModel<QuestionEditBottomSheetWidget> {
  ///  Local state fields for this component.

  bool isError = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for Option1TextField widget.
  FocusNode? option1TextFieldFocusNode;
  TextEditingController? option1TextFieldController;
  String? Function(BuildContext, String?)? option1TextFieldControllerValidator;
  // State field(s) for Checkbox2 widget.
  bool? checkbox2Value;
  // State field(s) for Option2TextField widget.
  FocusNode? option2TextFieldFocusNode;
  TextEditingController? option2TextFieldController;
  String? Function(BuildContext, String?)? option2TextFieldControllerValidator;
  // State field(s) for Checkbox3 widget.
  bool? checkbox3Value;
  // State field(s) for Option3TextField widget.
  FocusNode? option3TextFieldFocusNode;
  TextEditingController? option3TextFieldController;
  String? Function(BuildContext, String?)? option3TextFieldControllerValidator;
  // State field(s) for Checkbox4 widget.
  bool? checkbox4Value;
  // State field(s) for Option4TextField widget.
  FocusNode? option4TextFieldFocusNode;
  TextEditingController? option4TextFieldController;
  String? Function(BuildContext, String?)? option4TextFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    option1TextFieldFocusNode?.dispose();
    option1TextFieldController?.dispose();

    option2TextFieldFocusNode?.dispose();
    option2TextFieldController?.dispose();

    option3TextFieldFocusNode?.dispose();
    option3TextFieldController?.dispose();

    option4TextFieldFocusNode?.dispose();
    option4TextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
