import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/admin_components/admin_login_dialog/admin_login_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'start_screen_widget.dart' show StartScreenWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

  void initState(BuildContext context) {
    nameFieldLargeControllerValidator = _nameFieldLargeControllerValidator;
    emailFieldLargeControllerValidator = _emailFieldLargeControllerValidator;
  }

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
