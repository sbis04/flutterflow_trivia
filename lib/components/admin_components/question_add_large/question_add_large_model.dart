import '/flutter_flow/flutter_flow_util.dart';
import 'question_add_large_widget.dart' show QuestionAddLargeWidget;
import 'package:flutter/material.dart';

class QuestionAddLargeModel extends FlutterFlowModel<QuestionAddLargeWidget> {
  ///  Local state fields for this component.

  bool isError = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for QuestionTextField widget.
  FocusNode? questionTextFieldFocusNode;
  TextEditingController? questionTextFieldController;
  String? Function(BuildContext, String?)? questionTextFieldControllerValidator;
  String? _questionTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Checkbox1 widget.
  bool? checkbox1Value;
  // State field(s) for Option1TextField widget.
  FocusNode? option1TextFieldFocusNode;
  TextEditingController? option1TextFieldController;
  String? Function(BuildContext, String?)? option1TextFieldControllerValidator;
  String? _option1TextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Checkbox2 widget.
  bool? checkbox2Value;
  // State field(s) for Option2TextField widget.
  FocusNode? option2TextFieldFocusNode;
  TextEditingController? option2TextFieldController;
  String? Function(BuildContext, String?)? option2TextFieldControllerValidator;
  String? _option2TextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Checkbox3 widget.
  bool? checkbox3Value;
  // State field(s) for Option3TextField widget.
  FocusNode? option3TextFieldFocusNode;
  TextEditingController? option3TextFieldController;
  String? Function(BuildContext, String?)? option3TextFieldControllerValidator;
  String? _option3TextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Checkbox4 widget.
  bool? checkbox4Value;
  // State field(s) for Option4TextField widget.
  FocusNode? option4TextFieldFocusNode;
  TextEditingController? option4TextFieldController;
  String? Function(BuildContext, String?)? option4TextFieldControllerValidator;
  String? _option4TextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    questionTextFieldControllerValidator =
        _questionTextFieldControllerValidator;
    option1TextFieldControllerValidator = _option1TextFieldControllerValidator;
    option2TextFieldControllerValidator = _option2TextFieldControllerValidator;
    option3TextFieldControllerValidator = _option3TextFieldControllerValidator;
    option4TextFieldControllerValidator = _option4TextFieldControllerValidator;
  }

  @override
  void dispose() {
    questionTextFieldFocusNode?.dispose();
    questionTextFieldController?.dispose();

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
