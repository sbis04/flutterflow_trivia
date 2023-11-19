import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/admin_components/question_add_bottom_sheet/question_add_bottom_sheet_widget.dart';
import '/components/admin_components/question_add_large/question_add_large_widget.dart';
import '/components/admin_components/question_view/question_view_widget.dart';
import '/components/admin_components/save_question_set_dialog/save_question_set_dialog_widget.dart';
import '/components/empty_widgets/empty_question/empty_question_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'question_edit_page_widget.dart' show QuestionEditPageWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuestionEditPageModel extends FlutterFlowModel<QuestionEditPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
