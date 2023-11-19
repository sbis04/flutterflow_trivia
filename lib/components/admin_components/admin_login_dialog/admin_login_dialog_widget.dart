import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'admin_login_dialog_model.dart';
export 'admin_login_dialog_model.dart';

class AdminLoginDialogWidget extends StatefulWidget {
  const AdminLoginDialogWidget({super.key});

  @override
  _AdminLoginDialogWidgetState createState() => _AdminLoginDialogWidgetState();
}

class _AdminLoginDialogWidgetState extends State<AdminLoginDialogWidget> {
  late AdminLoginDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminLoginDialogModel());

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
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Container(
          width: 450.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Admin Login',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primary,
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
                            'ADMIN_LOGIN_DIALOG_close_rounded_ICN_ON_');
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Text(
                    'Only login using this method if you want to create question sets to server users during a trivia session.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'ADMIN_LOGIN_DIALOG_CONTINUE_WITH_GOOGLE_');
                      GoRouter.of(context).prepareAuthEvent();
                      final user = await authManager.signInWithGoogle(context);
                      if (user == null) {
                        return;
                      }

                      await currentUserReference!.update(createUsersRecordData(
                        isAdmin: true,
                      ));

                      context.goNamedAuth('CreateJoinScreen', context.mounted);
                    },
                    text: 'Continue with Google',
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 28.0,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 55.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
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
