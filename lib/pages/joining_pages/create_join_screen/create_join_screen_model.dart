import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_join_screen_widget.dart' show CreateJoinScreenWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CreateJoinScreenModel extends FlutterFlowModel<CreateJoinScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RoomRecord? roomDetailsSmall;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RoomRecord? roomDetails;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<List<RoomRecord>>? firestoreRequestCompleter;
  // Stores action output result for [Backend Call - Create Document] action in JoinButton widget.
  PlayersRecord? playerDocumentJoin;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
