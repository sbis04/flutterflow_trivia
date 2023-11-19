import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'room_join_screen_widget.dart' show RoomJoinScreenWidget;
import 'package:flutter/material.dart';

class RoomJoinScreenModel extends FlutterFlowModel<RoomJoinScreenWidget> {
  ///  Local state fields for this page.

  RoomRecord? room;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in RoomJoinScreen widget.
  RoomRecord? fetchedRoom;
  // Stores action output result for [Backend Call - Create Document] action in JoinButtonSmall widget.
  PlayersRecord? playerDocumentJoinSmall;
  // Stores action output result for [Backend Call - Create Document] action in JoinButton widget.
  PlayersRecord? playerDocumentJoin;

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
