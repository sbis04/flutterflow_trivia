import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'answering_view_model.dart';
export 'answering_view_model.dart';

class AnsweringViewWidget extends StatefulWidget {
  const AnsweringViewWidget({
    super.key,
    this.roomCode,
    this.currentQuestionIndex,
    this.playerRef,
    this.question,
    this.option1,
    this.questionIndex,
    this.option2,
    this.option3,
    this.option4,
  });

  final int? roomCode;
  final int? currentQuestionIndex;
  final DocumentReference? playerRef;
  final String? question;
  final String? option1;
  final int? questionIndex;
  final String? option2;
  final String? option3;
  final String? option4;

  @override
  _AnsweringViewWidgetState createState() => _AnsweringViewWidgetState();
}

class _AnsweringViewWidgetState extends State<AnsweringViewWidget> {
  late AnsweringViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnsweringViewModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ANSWERING_VIEW_AnsweringView_ON_INIT_STA');
      setState(() {
        _model.timerValue = 10;
      });
      while (_model.timerValue != 0) {
        await Future.delayed(const Duration(milliseconds: 1000));
        setState(() {
          _model.timerValue = _model.timerValue + -1;
        });
      }

      await widget.playerRef!.update(createPlayersRecordData(
        answeredIndex: widget.currentQuestionIndex,
      ));
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

    return Stack(
      children: [
        if (responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.roomCode?.toString(),
                            '-',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          _model.timerValue.toString(),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 42.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Spacer(),
                          Text(
                            widget.question!,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 18.0,
                                ),
                          ),
                          const Spacer(),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'ANSWERING_VIEW_Container_0ns8cxso_ON_TAP');
                              setState(() {
                                _model.isOptionSelected = true;
                              });
                              if (widget.questionIndex == 0) {
                                await widget.playerRef!.update({
                                  ...createPlayersRecordData(
                                    answeredIndex: widget.currentQuestionIndex,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'score': FieldValue.increment(
                                          1 + _model.timerValue),
                                    },
                                  ),
                                });
                              } else {
                                await widget.playerRef!
                                    .update(createPlayersRecordData(
                                  answeredIndex: widget.currentQuestionIndex,
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
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
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
                                  'ANSWERING_VIEW_Container_54jvko80_ON_TAP');
                              setState(() {
                                _model.isOptionSelected = true;
                              });
                              if (widget.questionIndex == 1) {
                                await widget.playerRef!.update({
                                  ...createPlayersRecordData(
                                    answeredIndex: widget.currentQuestionIndex,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'score': FieldValue.increment(
                                          1 + _model.timerValue),
                                    },
                                  ),
                                });
                              } else {
                                await widget.playerRef!
                                    .update(createPlayersRecordData(
                                  answeredIndex: widget.currentQuestionIndex,
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
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
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
                                  'ANSWERING_VIEW_Container_je3rokbe_ON_TAP');
                              setState(() {
                                _model.isOptionSelected = true;
                              });
                              if (widget.questionIndex == 2) {
                                await widget.playerRef!.update({
                                  ...createPlayersRecordData(
                                    answeredIndex: widget.currentQuestionIndex,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'score': FieldValue.increment(
                                          1 + _model.timerValue),
                                    },
                                  ),
                                });
                              } else {
                                await widget.playerRef!
                                    .update(createPlayersRecordData(
                                  answeredIndex: widget.currentQuestionIndex,
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
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
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
                                  'ANSWERING_VIEW_Container_7lpk8sue_ON_TAP');
                              setState(() {
                                _model.isOptionSelected = true;
                              });
                              if (widget.questionIndex == 3) {
                                await widget.playerRef!.update({
                                  ...createPlayersRecordData(
                                    answeredIndex: widget.currentQuestionIndex,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'score': FieldValue.increment(
                                          1 + _model.timerValue),
                                    },
                                  ),
                                });
                              } else {
                                await widget.playerRef!
                                    .update(createPlayersRecordData(
                                  answeredIndex: widget.currentQuestionIndex,
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
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
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
                            .divide(const SizedBox(height: 8.0))
                            .addToEnd(const SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Trivia',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lobster',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 42.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Room Code: ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              Text(
                                widget.roomCode!.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your name: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Expanded(
                          child: AuthUserStreamWidget(
                            builder: (context) => Text(
                              currentUserDisplayName,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Text(
                          _model.timerValue.toString(),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 50.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Spacer(),
                          Expanded(
                            child: Text(
                              widget.question!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 42.0,
                                  ),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'ANSWERING_VIEW_Container_vc0kko5p_ON_TAP');
                                    setState(() {
                                      _model.isOptionSelected = true;
                                    });
                                    if (widget.questionIndex == 0) {
                                      await widget.playerRef!.update({
                                        ...createPlayersRecordData(
                                          answeredIndex:
                                              widget.currentQuestionIndex,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'score': FieldValue.increment(
                                                1 + _model.timerValue),
                                          },
                                        ),
                                      });
                                    } else {
                                      await widget.playerRef!
                                          .update(createPlayersRecordData(
                                        answeredIndex:
                                            widget.currentQuestionIndex,
                                      ));
                                    }
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.14,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                    ),
                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 8.0, 12.0, 8.0),
                                      child: AutoSizeText(
                                        widget.option1!,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'ANSWERING_VIEW_Container_ihqatgrm_ON_TAP');
                                    setState(() {
                                      _model.isOptionSelected = true;
                                    });
                                    if (widget.questionIndex == 1) {
                                      await widget.playerRef!.update({
                                        ...createPlayersRecordData(
                                          answeredIndex:
                                              widget.currentQuestionIndex,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'score': FieldValue.increment(
                                                1 + _model.timerValue),
                                          },
                                        ),
                                      });
                                    } else {
                                      await widget.playerRef!
                                          .update(createPlayersRecordData(
                                        answeredIndex:
                                            widget.currentQuestionIndex,
                                      ));
                                    }
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.14,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                    ),
                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 8.0, 12.0, 8.0),
                                      child: AutoSizeText(
                                        widget.option2!,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 16.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'ANSWERING_VIEW_Container_3t2dbcug_ON_TAP');
                                    setState(() {
                                      _model.isOptionSelected = true;
                                    });
                                    if (widget.questionIndex == 2) {
                                      await widget.playerRef!.update({
                                        ...createPlayersRecordData(
                                          answeredIndex:
                                              widget.currentQuestionIndex,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'score': FieldValue.increment(
                                                1 + _model.timerValue),
                                          },
                                        ),
                                      });
                                    } else {
                                      await widget.playerRef!
                                          .update(createPlayersRecordData(
                                        answeredIndex:
                                            widget.currentQuestionIndex,
                                      ));
                                    }
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.14,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                    ),
                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 8.0, 12.0, 8.0),
                                      child: AutoSizeText(
                                        widget.option3!,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'ANSWERING_VIEW_Container_bcdk79u0_ON_TAP');
                                    setState(() {
                                      _model.isOptionSelected = true;
                                    });
                                    if (widget.questionIndex == 3) {
                                      await widget.playerRef!.update({
                                        ...createPlayersRecordData(
                                          answeredIndex:
                                              widget.currentQuestionIndex,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'score': FieldValue.increment(
                                                1 + _model.timerValue),
                                          },
                                        ),
                                      });
                                    } else {
                                      await widget.playerRef!
                                          .update(createPlayersRecordData(
                                        answeredIndex:
                                            widget.currentQuestionIndex,
                                      ));
                                    }
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.14,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                    ),
                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 8.0, 12.0, 8.0),
                                      child: AutoSizeText(
                                        widget.option4!,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 16.0)),
                          ),
                        ]
                            .divide(const SizedBox(height: 16.0))
                            .addToEnd(const SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
