import '/flutter_flow/flutter_flow_util.dart';
import 'host_trivia_page_widget.dart' show HostTriviaPageWidget;
import 'package:flutter/material.dart';

class HostTriviaPageModel extends FlutterFlowModel<HostTriviaPageWidget> {
  ///  Local state fields for this page.

  int timerValue = 10;

  int timerBufferValue = 2;

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
