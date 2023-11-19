import '/components/admin_components/answering_view/answering_view_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'trivia_page_widget.dart' show TriviaPageWidget;
import 'package:flutter/material.dart';

class TriviaPageModel extends FlutterFlowModel<TriviaPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AnsweringView component.
  late AnsweringViewModel answeringViewModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    answeringViewModel = createModel(context, () => AnsweringViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    answeringViewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
