import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'room_join_screen_model.dart';
export 'room_join_screen_model.dart';

class RoomJoinScreenWidget extends StatefulWidget {
  const RoomJoinScreenWidget({
    super.key,
    this.roomCode,
  });

  final int? roomCode;

  @override
  _RoomJoinScreenWidgetState createState() => _RoomJoinScreenWidgetState();
}

class _RoomJoinScreenWidgetState extends State<RoomJoinScreenWidget>
    with TickerProviderStateMixin {
  late RoomJoinScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'buttonOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomJoinScreenModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RoomJoinScreen'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ROOM_JOIN_SCREEN_RoomJoinScreen_ON_INIT_');
      if (widget.roomCode != null) {
        _model.fetchedRoom = await queryRoomRecordOnce(
          queryBuilder: (roomRecord) => roomRecord.where(
            'code',
            isEqualTo: widget.roomCode,
          ),
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        await Future.delayed(const Duration(milliseconds: 1500));
        setState(() {
          _model.room = _model.fetchedRoom;
        });
      }
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'Trivia - Join Room',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
            appBar: responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            )
                ? AppBar(
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: true,
                    title: Text(
                      'Trivia',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lobster',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 30.0,
                          ),
                    ),
                    actions: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 20.0,
                              buttonSize: 45.0,
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ROOM_JOIN_SCREEN_PAGE_github_ICN_ON_TAP');
                                await launchURL(
                                    'https://github.com/sbis04/flutterflow_trivia');
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                    centerTitle: true,
                    elevation: 0.0,
                  )
                : null,
            body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
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
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/trivia_background_transparent_white.png',
                          ).image,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primaryBtnText,
                            FlutterFlowTheme.of(context).primary,
                            FlutterFlowTheme.of(context).secondary
                          ],
                          stops: const [0.0, 0.8, 1.0],
                          begin: const AlignmentDirectional(0.0, -1.0),
                          end: const AlignmentDirectional(0, 1.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Hi, ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 24.0,
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
                                              .primaryText,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 24.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ROOM_JOIN_SCREEN_Text_14fe3sxb_ON_TAP');
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.goNamedAuth(
                                        'StartScreen',
                                        context.mounted,
                                        queryParameters: {
                                          'roomCode': serializeParam(
                                            widget.roomCode,
                                            ParamType.int,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Text(
                                      'Not your name? Change',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xB3000000),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ROOM_JOIN_SCREEN_JoinButtonSmall_ON_TAP');
                                if (_model.room?.host == currentUserUid) {
                                  context.goNamed(
                                    'HostPage',
                                    queryParameters: {
                                      'roomDetails': serializeParam(
                                        _model.room?.reference,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                } else {
                                  var playersRecordReference =
                                      PlayersRecord.createDoc(
                                          _model.room!.reference);
                                  await playersRecordReference
                                      .set(createPlayersRecordData(
                                    name: currentUserDisplayName,
                                    uid: currentUserUid,
                                    isReady: true,
                                    createdAt: getCurrentTimestamp,
                                    email: currentUserEmail,
                                    score: 0,
                                    answeredIndex: -1,
                                  ));
                                  _model.playerDocumentJoinSmall =
                                      PlayersRecord.getDocumentFromData(
                                          createPlayersRecordData(
                                            name: currentUserDisplayName,
                                            uid: currentUserUid,
                                            isReady: true,
                                            createdAt: getCurrentTimestamp,
                                            email: currentUserEmail,
                                            score: 0,
                                            answeredIndex: -1,
                                          ),
                                          playersRecordReference);

                                  context.goNamed(
                                    'TriviaPage',
                                    queryParameters: {
                                      'roomCode': serializeParam(
                                        widget.roomCode,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                }

                                setState(() {});
                              },
                              text: 'Join Room',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 55.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 2.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['buttonOnPageLoadAnimation1']!),
                            const Spacer(),
                            Image.asset(
                              'assets/images/trivia_logo_white_high_res.png',
                              width: double.infinity,
                              height: 250.0,
                              fit: BoxFit.contain,
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation']!),
                            const Spacer(),
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
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/trivia_background.png',
                          ).image,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            32.0, 32.0, 32.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Trivia',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lobster',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 36.0,
                                      ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  buttonSize: 55.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.github,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 36.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'ROOM_JOIN_SCREEN_GitHubButton_ON_TAP');
                                    await launchURL(
                                        'https://github.com/sbis04/flutterflow_trivia');
                                  },
                                ),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Spacer(),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 60.0),
                                        child: Image.asset(
                                          'assets/images/trivia_logo_high_res.png',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.18,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    decoration: const BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Form(
                                      key: _model.formKey,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (widget.roomCode != null)
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Room Code: ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      widget.roomCode
                                                          ?.toString(),
                                                      '-',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 24.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Hi, ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 32.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                              AuthUserStreamWidget(
                                                builder: (context) => Text(
                                                  currentUserDisplayName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 32.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 24.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'ROOM_JOIN_SCREEN_Text_yoxwbeb8_ON_TAP');
                                                    GoRouter.of(context)
                                                        .prepareAuthEvent();
                                                    await authManager.signOut();
                                                    GoRouter.of(context)
                                                        .clearRedirectLocation();

                                                    context.goNamedAuth(
                                                      'StartScreen',
                                                      context.mounted,
                                                      queryParameters: {
                                                        'roomCode':
                                                            serializeParam(
                                                          widget.roomCode,
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    FFAppState().update(() {
                                                      FFAppState().isJoinning =
                                                          false;
                                                    });
                                                  },
                                                  child: Text(
                                                    'Not your name? Change',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xB3000000),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 60.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'ROOM_JOIN_SCREEN_PAGE_JoinButton_ON_TAP');
                                                if (_model.room?.host ==
                                                    currentUserUid) {
                                                  context.goNamed(
                                                    'HostPage',
                                                    queryParameters: {
                                                      'roomDetails':
                                                          serializeParam(
                                                        _model.room?.reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  var playersRecordReference =
                                                      PlayersRecord.createDoc(
                                                          _model
                                                              .room!.reference);
                                                  await playersRecordReference
                                                      .set(
                                                          createPlayersRecordData(
                                                    name:
                                                        currentUserDisplayName,
                                                    uid: currentUserUid,
                                                    isReady: true,
                                                    createdAt:
                                                        getCurrentTimestamp,
                                                    email: currentUserEmail,
                                                    score: 0,
                                                    answeredIndex: -1,
                                                  ));
                                                  _model.playerDocumentJoin =
                                                      PlayersRecord.getDocumentFromData(
                                                          createPlayersRecordData(
                                                            name:
                                                                currentUserDisplayName,
                                                            uid: currentUserUid,
                                                            isReady: true,
                                                            createdAt:
                                                                getCurrentTimestamp,
                                                            email:
                                                                currentUserEmail,
                                                            score: 0,
                                                            answeredIndex: -1,
                                                          ),
                                                          playersRecordReference);

                                                  context.goNamed(
                                                    'TriviaPage',
                                                    queryParameters: {
                                                      'roomCode':
                                                          serializeParam(
                                                        widget.roomCode,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                      ),
                                                    },
                                                  );
                                                }

                                                setState(() {});
                                              },
                                              text: 'Join Room',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 60.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          fontSize: 24.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                elevation: 2.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'buttonOnPageLoadAnimation2']!),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if ((widget.roomCode != null) &&
                      !valueOrDefault<bool>(
                        _model.room?.hasCode(),
                        false,
                      ))
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 4.0,
                          sigmaY: 4.0,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent50,
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: custom_widgets.CircularIndicator(
                                  width: 40.0,
                                  height: 40.0,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  thickness: 4.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Finding Room...',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  'Please wait white the room is being fetched',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
