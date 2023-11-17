import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'save_question_set_dialog_model.dart';
export 'save_question_set_dialog_model.dart';

class SaveQuestionSetDialogWidget extends StatefulWidget {
  const SaveQuestionSetDialogWidget({
    Key? key,
    this.setName,
    this.questionSetRef,
  }) : super(key: key);

  final String? setName;
  final DocumentReference? questionSetRef;

  @override
  _SaveQuestionSetDialogWidgetState createState() =>
      _SaveQuestionSetDialogWidgetState();
}

class _SaveQuestionSetDialogWidgetState
    extends State<SaveQuestionSetDialogWidget> {
  late SaveQuestionSetDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaveQuestionSetDialogModel());

    _model.setNameFieldController ??=
        TextEditingController(text: widget.setName);
    _model.setNameFieldFocusNode ??= FocusNode();

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

    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 4.0,
        sigmaY: 4.0,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Container(
          width: 450.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Save Question Set',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 24.0,
                      buttonSize: 45.0,
                      icon: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 26.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'SAVE_QUESTION_SET_DIALOG_close_rounded_I');
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: TextFormField(
                    controller: _model.setNameFieldController,
                    focusNode: _model.setNameFieldFocusNode,
                    autofocus: true,
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.next,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 16.0,
                              ),
                      hintText: 'Enter question set name here...',
                      hintStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16.0,
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).accent2,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 24.0, 24.0, 24.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).accent4,
                    validator: _model.setNameFieldControllerValidator
                        .asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'SAVE_QUESTION_SET_DIALOG_SAVE_BTN_ON_TAP');
                      if (widget.questionSetRef != null) {
                        await widget.questionSetRef!.update({
                          ...createQuestionSetsRecordData(
                            setName: _model.setNameFieldController.text,
                          ),
                          ...mapToFirestore(
                            {
                              'questions': getQuestionListFirestoreData(
                                FFAppState().questionSet,
                              ),
                            },
                          ),
                        });
                        Navigator.pop(context);
                        context.safePop();
                      } else {
                        var questionSetsRecordReference =
                            QuestionSetsRecord.collection.doc();
                        await questionSetsRecordReference.set({
                          ...createQuestionSetsRecordData(
                            createdAt: getCurrentTimestamp,
                            setName: _model.setNameFieldController.text,
                            createdBy: currentUserReference,
                          ),
                          ...mapToFirestore(
                            {
                              'questions': getQuestionListFirestoreData(
                                FFAppState().questionSet,
                              ),
                            },
                          ),
                        });
                        _model.questionSetDoc =
                            QuestionSetsRecord.getDocumentFromData({
                          ...createQuestionSetsRecordData(
                            createdAt: getCurrentTimestamp,
                            setName: _model.setNameFieldController.text,
                            createdBy: currentUserReference,
                          ),
                          ...mapToFirestore(
                            {
                              'questions': getQuestionListFirestoreData(
                                FFAppState().questionSet,
                              ),
                            },
                          ),
                        }, questionSetsRecordReference);
                        Navigator.pop(context);
                        context.safePop();
                      }

                      setState(() {});
                    },
                    text: 'Save',
                    options: FFButtonOptions(
                      width: 140.0,
                      height: 55.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
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
        ),
      ),
    );
  }
}
