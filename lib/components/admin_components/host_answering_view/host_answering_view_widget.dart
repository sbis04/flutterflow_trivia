import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'host_answering_view_model.dart';
export 'host_answering_view_model.dart';

class HostAnsweringViewWidget extends StatefulWidget {
  const HostAnsweringViewWidget({
    Key? key,
    this.roomCode,
    this.currentQuestionIndex,
    this.question,
    this.option1,
    this.questionIndex,
    this.option2,
    this.option3,
    this.option4,
    required this.roomRef,
  }) : super(key: key);

  final int? roomCode;
  final int? currentQuestionIndex;
  final String? question;
  final String? option1;
  final int? questionIndex;
  final String? option2;
  final String? option3;
  final String? option4;
  final DocumentReference? roomRef;

  @override
  _HostAnsweringViewWidgetState createState() =>
      _HostAnsweringViewWidgetState();
}

class _HostAnsweringViewWidgetState extends State<HostAnsweringViewWidget> {
  late HostAnsweringViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HostAnsweringViewModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOST_ANSWERING_VIEW_HostAnsweringView_ON');
      setState(() {
        _model.timerValue = 10;
      });
      while (_model.timerValue != 0) {
        await Future.delayed(const Duration(milliseconds: 1000));
        setState(() {
          _model.timerValue = _model.timerValue + -1;
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
