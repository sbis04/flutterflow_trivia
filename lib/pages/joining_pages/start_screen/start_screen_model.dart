import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'start_screen_widget.dart' show StartScreenWidget;
import 'package:flutter/material.dart';

class StartScreenModel extends FlutterFlowModel<StartScreenWidget> {
  ///  Local state fields for this page.

  RoomRecord? room;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for NameFieldSmall widget.
  FocusNode? nameFieldSmallFocusNode;
  TextEditingController? nameFieldSmallController;
  String? Function(BuildContext, String?)? nameFieldSmallControllerValidator;
  // State field(s) for EmailFieldSmall widget.
  FocusNode? emailFieldSmallFocusNode;
  TextEditingController? emailFieldSmallController;
  String? Function(BuildContext, String?)? emailFieldSmallControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in JoinButtonSmall widget.
  PlayersRecord? playerDocumentJoinSmall;
  // State field(s) for NameFieldLarge widget.
  FocusNode? nameFieldLargeFocusNode;
  TextEditingController? nameFieldLargeController;
  String? Function(BuildContext, String?)? nameFieldLargeControllerValidator;
  String? _nameFieldLargeControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your name';
    }

    return null;
  }

  // State field(s) for EmailFieldLarge widget.
  FocusNode? emailFieldLargeFocusNode;
  TextEditingController? emailFieldLargeController;
  String? Function(BuildContext, String?)? emailFieldLargeControllerValidator;
  String? _emailFieldLargeControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your email';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nameFieldLargeControllerValidator = _nameFieldLargeControllerValidator;
    emailFieldLargeControllerValidator = _emailFieldLargeControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFieldSmallFocusNode?.dispose();
    nameFieldSmallController?.dispose();

    emailFieldSmallFocusNode?.dispose();
    emailFieldSmallController?.dispose();

    nameFieldLargeFocusNode?.dispose();
    nameFieldLargeController?.dispose();

    emailFieldLargeFocusNode?.dispose();
    emailFieldLargeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
