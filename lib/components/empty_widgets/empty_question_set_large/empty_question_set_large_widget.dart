import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'empty_question_set_large_model.dart';
export 'empty_question_set_large_model.dart';

class EmptyQuestionSetLargeWidget extends StatefulWidget {
  const EmptyQuestionSetLargeWidget({super.key});

  @override
  _EmptyQuestionSetLargeWidgetState createState() =>
      _EmptyQuestionSetLargeWidgetState();
}

class _EmptyQuestionSetLargeWidgetState
    extends State<EmptyQuestionSetLargeWidget> {
  late EmptyQuestionSetLargeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyQuestionSetLargeModel());

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
        GridView(
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            childAspectRatio: 3.5,
          ),
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).emptyBg,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 2.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).emptyBg,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 2.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).emptyBg,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 2.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).emptyBg,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 2.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).emptyBg,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 2.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).emptyBg,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 2.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).emptyBg,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 2.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).emptyBg,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 2.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).emptyBg,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 2.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).emptyBg,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 2.0,
                ),
              ),
            ),
          ],
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
            step2: 2.0,
            radius: 0.8,
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
              'No Question Set Found',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Text(
                'You can add a question set by clicking the "Add" button below.',
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
