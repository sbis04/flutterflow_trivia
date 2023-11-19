import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'save_question_set_dialog_widget.dart' show SaveQuestionSetDialogWidget;
import 'package:flutter/material.dart';

class SaveQuestionSetDialogModel
    extends FlutterFlowModel<SaveQuestionSetDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SetNameField widget.
  FocusNode? setNameFieldFocusNode;
  TextEditingController? setNameFieldController;
  String? Function(BuildContext, String?)? setNameFieldControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  QuestionSetsRecord? questionSetDoc;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    setNameFieldFocusNode?.dispose();
    setNameFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
