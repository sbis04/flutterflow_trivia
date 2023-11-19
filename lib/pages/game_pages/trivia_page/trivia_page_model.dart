import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/admin_components/answering_view/answering_view_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'trivia_page_widget.dart' show TriviaPageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TriviaPageModel extends FlutterFlowModel<TriviaPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AnsweringView component.
  late AnsweringViewModel answeringViewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    answeringViewModel = createModel(context, () => AnsweringViewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    answeringViewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
