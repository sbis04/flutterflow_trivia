import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/admin_components/answering_view/answering_view_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'trivia_page_model.dart';
export 'trivia_page_model.dart';

class TriviaPageWidget extends StatefulWidget {
  const TriviaPageWidget({
    super.key,
    this.roomCode,
  });

  final int? roomCode;

  @override
  _TriviaPageWidgetState createState() => _TriviaPageWidgetState();
}

class _TriviaPageWidgetState extends State<TriviaPageWidget> {
  late TriviaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TriviaPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'TriviaPage'});
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

    return StreamBuilder<List<RoomRecord>>(
      stream: queryRoomRecord(
        queryBuilder: (roomRecord) => roomRecord.where(
          'code',
          isEqualTo: widget.roomCode,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            body: Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<RoomRecord> triviaPageRoomRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final triviaPageRoomRecord = triviaPageRoomRecordList.isNotEmpty
            ? triviaPageRoomRecordList.first
            : null;
        return Title(
            title: 'Codewords',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primary,
                body: SafeArea(
                  top: true,
                  child: StreamBuilder<List<PlayersRecord>>(
                    stream: queryPlayersRecord(
                      parent: triviaPageRoomRecord?.reference,
                      queryBuilder: (playersRecord) => playersRecord.where(
                        'uid',
                        isEqualTo: currentUserUid,
                      ),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<PlayersRecord> containerPlayersRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final containerPlayersRecord =
                          containerPlayersRecordList.isNotEmpty
                              ? containerPlayersRecordList.first
                              : null;
                      return Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(),
                        child: StreamBuilder<QuestionSetsRecord>(
                          stream: QuestionSetsRecord.getDocument(
                              triviaPageRoomRecord!.questionSet!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final stackQuestionSetsRecord = snapshot.data!;
                            return Stack(
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Builder(
                                    builder: (context) {
                                      if (stackQuestionSetsRecord
                                              .questions.length ==
                                          (triviaPageRoomRecord.currentQuestionIndex +
                                              1)) {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  const BoxDecoration(),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Text(
                                                        'Leaderboard',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lobster',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      40.0,
                                                                ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    20.0,
                                                                buttonSize:
                                                                    45.0,
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .github,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  size: 28.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'TRIVIA_PAGE_PAGE_github_ICN_ON_TAP');
                                                                  await launchURL(
                                                                      'https://github.com/sbis04/flutterflow_trivia');
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: StreamBuilder<
                                                      List<PlayersRecord>>(
                                                    stream: queryPlayersRecord(
                                                      parent:
                                                          triviaPageRoomRecord
                                                              .reference,
                                                      queryBuilder:
                                                          (playersRecord) =>
                                                              playersRecord
                                                                  .orderBy(
                                                                      'score',
                                                                      descending:
                                                                          true),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<PlayersRecord>
                                                          listViewPlayersRecordList =
                                                          snapshot.data!;
                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewPlayersRecordList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => const SizedBox(
                                                                height: 16.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewPlayersRecord =
                                                              listViewPlayersRecordList[
                                                                  listViewIndex];
                                                          return Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                child: Text(
                                                                  listViewPlayersRecord
                                                                      .name,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            16.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30.0),
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                ),
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.00,
                                                                        0.00),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    listViewPlayersRecord
                                                                        .score
                                                                        .toString(),
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              16.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Builder(
                                          builder: (context) {
                                            if (!triviaPageRoomRecord.isStarted) {
                                              return Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Waiting for the trivia session to start',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      22.0,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Players are joinning...',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .barrierColor,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            } else {
                                              return Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        containerPlayersRecord
                                                            ?.score
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 80.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                lineHeight: 1.0,
                                                              ),
                                                    ),
                                                    Text(
                                                      'Your Score',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 16.0,
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Waiting for the next question...',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .barrierColor,
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }
                                          },
                                        );
                                      }
                                    },
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Builder(
                                    builder: (context) {
                                      if (stackQuestionSetsRecord
                                              .questions.length ==
                                          (triviaPageRoomRecord.currentQuestionIndex +
                                              1)) {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 24.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                const BoxDecoration(),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      'Leaderboard',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Lobster',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 60.0,
                                                              ),
                                                    ),
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 20.0,
                                                            buttonSize: 55.0,
                                                            icon: const FaIcon(
                                                              FontAwesomeIcons
                                                                  .github,
                                                              color:
                                                                  Colors.white,
                                                              size: 36.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'TRIVIA_PAGE_PAGE_GitHubButton_ON_TAP');
                                                              await launchURL(
                                                                  'https://github.com/sbis04/flutterflow_trivia');
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: StreamBuilder<
                                                    List<PlayersRecord>>(
                                                  stream: queryPlayersRecord(
                                                    parent: triviaPageRoomRecord
                                                        .reference,
                                                    queryBuilder:
                                                        (playersRecord) =>
                                                            playersRecord
                                                                .orderBy(
                                                                    'score',
                                                                    descending:
                                                                        true),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<PlayersRecord>
                                                        listViewPlayersRecordList =
                                                        snapshot.data!;
                                                    return ListView.separated(
                                                      padding: EdgeInsets.zero,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          listViewPlayersRecordList
                                                              .length,
                                                      separatorBuilder:
                                                          (_, __) => const SizedBox(
                                                              height: 16.0),
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewPlayersRecord =
                                                            listViewPlayersRecordList[
                                                                listViewIndex];
                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Text(
                                                                listViewPlayersRecord
                                                                    .name,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          24.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30.0),
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.00,
                                                                      0.00),
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        6.0,
                                                                        10.0,
                                                                        6.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  listViewPlayersRecord
                                                                      .score
                                                                      .toString(),
                                                                  maxLines: 1,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            24.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      } else {
                                        return Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                          ),
                                          child: Builder(
                                            builder: (context) {
                                              if (!triviaPageRoomRecord.isStarted) {
                                                return Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Waiting for the trivia session to start',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 36.0,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Players are joinning...',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .barrierColor,
                                                                  fontSize:
                                                                      24.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                return Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          containerPlayersRecord
                                                              ?.score
                                                              .toString(),
                                                          '0',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              fontSize: 120.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              lineHeight: 1.0,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Your Score',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      36.0,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    24.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Waiting for the next question...',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .barrierColor,
                                                                fontSize: 24.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }
                                            },
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                Builder(
                                  builder: (context) {
                                    if (containerPlayersRecord?.answeredIndex ==
                                        (triviaPageRoomRecord.currentQuestionIndex -
                                            1)) {
                                      return wrapWithModel(
                                        model: _model.answeringViewModel,
                                        updateCallback: () => setState(() {}),
                                        updateOnChange: true,
                                        child: AnsweringViewWidget(
                                          key: ValueKey(triviaPageRoomRecord.currentQuestionIndex
                                              .toString()),
                                          roomCode: triviaPageRoomRecord.code,
                                          question: stackQuestionSetsRecord
                                              .questions[triviaPageRoomRecord.currentQuestionIndex]
                                              .statement,
                                          option1: stackQuestionSetsRecord
                                              .questions[triviaPageRoomRecord.currentQuestionIndex]
                                              .options[0],
                                          option2: stackQuestionSetsRecord
                                              .questions[triviaPageRoomRecord.currentQuestionIndex]
                                              .options[1],
                                          option3: stackQuestionSetsRecord
                                              .questions[triviaPageRoomRecord.currentQuestionIndex]
                                              .options[2],
                                          option4: stackQuestionSetsRecord
                                              .questions[triviaPageRoomRecord.currentQuestionIndex]
                                              .options[3],
                                          playerRef:
                                              containerPlayersRecord?.reference,
                                          currentQuestionIndex:
                                              triviaPageRoomRecord
                                                  .currentQuestionIndex,
                                          questionIndex: stackQuestionSetsRecord
                                              .questions[triviaPageRoomRecord.currentQuestionIndex]
                                              .correctOptionIndex,
                                        ),
                                      );
                                    } else {
                                      return Container(
                                        decoration: const BoxDecoration(),
                                      );
                                    }
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ));
      },
    );
  }
}
