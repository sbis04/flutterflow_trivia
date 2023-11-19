import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'empty_question_model.dart';
export 'empty_question_model.dart';

class EmptyQuestionWidget extends StatefulWidget {
  const EmptyQuestionWidget({super.key});

  @override
  _EmptyQuestionWidgetState createState() => _EmptyQuestionWidgetState();
}

class _EmptyQuestionWidgetState extends State<EmptyQuestionWidget> {
  late EmptyQuestionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyQuestionModel());

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      children: [
        if (responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ))
          ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Question',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).accent4,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).emptyBg,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent4,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 16.0, 24.0, 16.0),
                            child: Text(
                              ' ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue1 ??= true,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue1 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 1',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue2 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue2 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue3 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue3 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 3',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue4 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue4 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 4',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Delete',
                              icon: Icon(
                                Icons.delete_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).accent3,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontWeight: FontWeight.w600,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Edit',
                            icon: const Icon(
                              Icons.mode_edit_rounded,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).accent3,
                                    fontWeight: FontWeight.w600,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Question',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).accent4,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).emptyBg,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent4,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 16.0, 24.0, 16.0),
                            child: Text(
                              ' ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue5 ??= true,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue5 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 1',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue6 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue6 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue7 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue7 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 3',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue8 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue8 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 4',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Delete',
                              icon: Icon(
                                Icons.delete_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).accent3,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontWeight: FontWeight.w600,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Edit',
                            icon: const Icon(
                              Icons.mode_edit_rounded,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).accent3,
                                    fontWeight: FontWeight.w600,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Question',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).accent4,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).emptyBg,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent4,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 16.0, 24.0, 16.0),
                            child: Text(
                              ' ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue9 ??= true,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue9 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 1',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue10 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue10 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue11 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue11 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 3',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue12 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue12 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 4',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Delete',
                              icon: Icon(
                                Icons.delete_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).accent3,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontWeight: FontWeight.w600,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Edit',
                            icon: const Icon(
                              Icons.mode_edit_rounded,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).accent3,
                                    fontWeight: FontWeight.w600,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Question',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).accent4,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).emptyBg,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent4,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 16.0, 24.0, 16.0),
                            child: Text(
                              ' ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue13 ??= true,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue13 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 1',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue14 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue14 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue15 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue15 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 3',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue16 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue16 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 4',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Delete',
                            icon: Icon(
                              Icons.delete_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).accent3,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontWeight: FontWeight.w600,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Edit',
                          icon: const Icon(
                            Icons.mode_edit_rounded,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).accent3,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(height: 16.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Question',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).accent4,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).emptyBg,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent4,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 16.0, 24.0, 16.0),
                            child: Text(
                              ' ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue17 ??= true,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue17 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 1',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue18 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue18 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue19 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue19 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 3',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue20 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue20 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 4',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Delete',
                            icon: Icon(
                              Icons.delete_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).accent3,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontWeight: FontWeight.w600,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Edit',
                          icon: const Icon(
                            Icons.mode_edit_rounded,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).accent3,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(height: 16.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Question',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).accent4,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).emptyBg,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent4,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 16.0, 24.0, 16.0),
                            child: Text(
                              ' ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue21 ??= true,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue21 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 1',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue22 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue22 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue23 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue23 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 3',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue24 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue24 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).emptyBg,
                                  checkColor:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Option 4',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).emptyBg,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Delete',
                            icon: Icon(
                              Icons.delete_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).accent3,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontWeight: FontWeight.w600,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Edit',
                          icon: const Icon(
                            Icons.mode_edit_rounded,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).accent3,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(height: 16.0)),
                ),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: custom_widgets.RadialGradientContainer(
            width: double.infinity,
            height: double.infinity,
            color1: Color(0xCCFFFFFF),
            color2: Color(0x00FFFFFF),
            step1: 0.5,
            step2: 1.0,
            radius: 1.0,
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.00, 1.00),
          child: Container(
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0x00FFFFFF),
                  FlutterFlowTheme.of(context).primaryBackground
                ],
                stops: const [0.0, 1.0],
                begin: const AlignmentDirectional(0.0, -1.0),
                end: const AlignmentDirectional(0, 1.0),
              ),
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Icon(
                Icons.notes_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 50.0,
              ),
            ),
            Text(
              'No Question Found',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Text(
                'You can add a question by clicking the "Add" button below.',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
