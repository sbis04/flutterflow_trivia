import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/question_view/question_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'trivia_page_widget.dart' show TriviaPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TriviaPageModel extends FlutterFlowModel<TriviaPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for QuestionView component.
  late QuestionViewModel questionViewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    questionViewModel = createModel(context, () => QuestionViewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    questionViewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
