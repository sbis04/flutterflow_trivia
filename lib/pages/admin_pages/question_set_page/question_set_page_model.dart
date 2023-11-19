import '/flutter_flow/flutter_flow_util.dart';
import 'question_set_page_widget.dart' show QuestionSetPageWidget;
import 'package:flutter/material.dart';

class QuestionSetPageModel extends FlutterFlowModel<QuestionSetPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

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
