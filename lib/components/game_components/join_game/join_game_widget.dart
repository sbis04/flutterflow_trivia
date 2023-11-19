import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'join_game_model.dart';
export 'join_game_model.dart';

class JoinGameWidget extends StatefulWidget {
  const JoinGameWidget({super.key});

  @override
  _JoinGameWidgetState createState() => _JoinGameWidgetState();
}

class _JoinGameWidgetState extends State<JoinGameWidget> {
  late JoinGameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JoinGameModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBtnText,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 24.0, 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Room code',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: 'Enter the room code',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodySmall.override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0x7F000000),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                      keyboardType: TextInputType.number,
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('JOIN_GAME_COMP_VERIFY_BTN_ON_TAP');
                        FFAppState().update(() {
                          FFAppState().isVerifyPressed = true;
                        });
                        setState(() => _model.firestoreRequestCompleter = null);
                        await _model.waitForFirestoreRequestCompleted();
                      },
                      text: 'Verify',
                      options: FFButtonOptions(
                        width: 100.0,
                        height: 40.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.black,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        elevation: 2.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (FFAppState().isVerifyPressed)
              FutureBuilder<List<RoomRecord>>(
                future: (_model.firestoreRequestCompleter ??=
                        Completer<List<RoomRecord>>()
                          ..complete(queryRoomRecordOnce(
                            queryBuilder: (roomRecord) => roomRecord.where(
                              'code',
                              isEqualTo:
                                  int.tryParse(_model.textController.text),
                            ),
                            singleRecord: true,
                          )))
                    .future,
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
                  List<RoomRecord> buttonRoomRecordList = snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final buttonRoomRecord = buttonRoomRecordList.isNotEmpty
                      ? buttonRoomRecordList.first
                      : null;
                  return FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('JOIN_GAME_COMP_JOIN_BTN_ON_TAP');
                      if (buttonRoomRecord?.host == currentUserUid) {
                        context.pushNamed(
                          'HostPage',
                          queryParameters: {
                            'roomDetails': serializeParam(
                              buttonRoomRecord?.reference,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        var playersRecordReference = PlayersRecord.createDoc(
                            buttonRoomRecord!.reference);
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
                        _model.playerDocument =
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
                              buttonRoomRecord.code,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                        );
                      }

                      FFAppState().update(() {
                        FFAppState().isVerifyPressed = false;
                      });

                      setState(() {});
                    },
                    text: 'Join',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 55.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 2.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
