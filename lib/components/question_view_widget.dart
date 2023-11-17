import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'question_view_model.dart';
export 'question_view_model.dart';

class QuestionViewWidget extends StatefulWidget {
  const QuestionViewWidget({
    Key? key,
    this.roomCode,
    this.parameter2,
    this.playerRef,
    this.question,
    this.option1,
    this.parameter6,
    this.option2,
    this.option3,
    this.option4,
  }) : super(key: key);

  final int? roomCode;
  final int? parameter2;
  final DocumentReference? playerRef;
  final String? question;
  final String? option1;
  final int? parameter6;
  final String? option2;
  final String? option3;
  final String? option4;

  @override
  _QuestionViewWidgetState createState() => _QuestionViewWidgetState();
}

class _QuestionViewWidgetState extends State<QuestionViewWidget>
    with TickerProviderStateMixin {
  late QuestionViewModel _model;

  final animationsMap = {
    'timerOnPageLoadAnimation': AnimationInfo(
      loop: true,
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 300.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.8, 0.8),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 300.ms,
          begin: 1.0,
          end: 0.8,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionViewModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('QUESTION_VIEW_QuestionView_ON_INIT_STATE');
      _model.timerController.onStartTimer();
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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Code: ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.roomCode?.toString(),
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trivia',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lobster',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 32.0,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Your name: ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              currentUserDisplayName,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  FlutterFlowTimer(
                    initialTime: _model.timerMilliseconds,
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      minute: false,
                      milliSecond: false,
                    ),
                    controller: _model.timerController,
                    updateStateInterval: Duration(milliseconds: 1000),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds = value;
                      _model.timerValue = displayTime;
                      if (shouldUpdate) setState(() {});
                    },
                    onEnded: () async {
                      logFirebaseEvent(
                          'QUESTION_VIEW_Timer_28ltdzqb_ON_TIMER_EN');
                      if (!_model.isOptionSelected) {
                        await widget.playerRef!.update(createPlayersRecordData(
                          answeredIndex: widget.parameter2,
                        ));
                      }
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondary,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ).animateOnPageLoad(
                      animationsMap['timerOnPageLoadAnimation']!),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Spacer(),
                    Text(
                      widget.question!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 18.0,
                          ),
                    ),
                    Spacer(),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'QUESTION_VIEW_Container_0ns8cxso_ON_TAP');
                        setState(() {
                          _model.isOptionSelected = true;
                        });
                        _model.timerController.onStopTimer();
                        if (widget.parameter6 == 0) {
                          await widget.playerRef!.update({
                            ...createPlayersRecordData(
                              answeredIndex: widget.parameter2,
                            ),
                            ...mapToFirestore(
                              {
                                'score': FieldValue.increment(1 +
                                    (_model.timerMilliseconds / 1000).toInt()),
                              },
                            ),
                          });
                        } else {
                          await widget.playerRef!
                              .update(createPlayersRecordData(
                            answeredIndex: widget.parameter2,
                          ));
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent1,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 12.0, 8.0),
                          child: AutoSizeText(
                            widget.option1!,
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'QUESTION_VIEW_Container_54jvko80_ON_TAP');
                        setState(() {
                          _model.isOptionSelected = true;
                        });
                        _model.timerController.onStopTimer();
                        if (widget.parameter6 == 1) {
                          await widget.playerRef!.update({
                            ...createPlayersRecordData(
                              answeredIndex: widget.parameter2,
                            ),
                            ...mapToFirestore(
                              {
                                'score': FieldValue.increment(1 +
                                    (_model.timerMilliseconds / 1000).toInt()),
                              },
                            ),
                          });
                        } else {
                          await widget.playerRef!
                              .update(createPlayersRecordData(
                            answeredIndex: widget.parameter2,
                          ));
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent1,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 12.0, 8.0),
                          child: AutoSizeText(
                            widget.option2!,
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'QUESTION_VIEW_Container_je3rokbe_ON_TAP');
                        setState(() {
                          _model.isOptionSelected = true;
                        });
                        _model.timerController.onStopTimer();
                        if (widget.parameter6 == 2) {
                          await widget.playerRef!.update({
                            ...createPlayersRecordData(
                              answeredIndex: widget.parameter2,
                            ),
                            ...mapToFirestore(
                              {
                                'score': FieldValue.increment(1 +
                                    (_model.timerMilliseconds / 1000).toInt()),
                              },
                            ),
                          });
                        } else {
                          await widget.playerRef!
                              .update(createPlayersRecordData(
                            answeredIndex: widget.parameter2,
                          ));
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent1,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 12.0, 8.0),
                          child: AutoSizeText(
                            widget.option3!,
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'QUESTION_VIEW_Container_7lpk8sue_ON_TAP');
                        setState(() {
                          _model.isOptionSelected = true;
                        });
                        _model.timerController.onStopTimer();
                        if (widget.parameter6 == 3) {
                          await widget.playerRef!.update({
                            ...createPlayersRecordData(
                              answeredIndex: widget.parameter2,
                            ),
                            ...mapToFirestore(
                              {
                                'score': FieldValue.increment(1 +
                                    (_model.timerMilliseconds / 1000).toInt()),
                              },
                            ),
                          });
                        } else {
                          await widget.playerRef!
                              .update(createPlayersRecordData(
                            answeredIndex: widget.parameter2,
                          ));
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent1,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 12.0, 8.0),
                          child: AutoSizeText(
                            widget.option4!,
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 8.0))
                      .addToEnd(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
