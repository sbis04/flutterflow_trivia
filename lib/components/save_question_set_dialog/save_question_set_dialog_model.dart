import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'save_question_set_dialog_widget.dart' show SaveQuestionSetDialogWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

  void initState(BuildContext context) {}

  void dispose() {
    setNameFieldFocusNode?.dispose();
    setNameFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
