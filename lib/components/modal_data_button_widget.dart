import '/components/modal_date_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_data_button_model.dart';
export 'modal_data_button_model.dart';

class ModalDataButtonWidget extends StatefulWidget {
  const ModalDataButtonWidget({Key? key}) : super(key: key);

  @override
  _ModalDataButtonWidgetState createState() => _ModalDataButtonWidgetState();
}

class _ModalDataButtonWidgetState extends State<ModalDataButtonWidget> {
  late ModalDataButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalDataButtonModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        wrapWithModel(
          model: _model.modalDateModel,
          updateCallback: () => setState(() {}),
          child: ModalDateWidget(),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'VOLTAR',
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 15.0,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFF056CF2),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'AVANÇAR',
              icon: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 15.0,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFF056CF2),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ].divide(SizedBox(width: 20.0)),
        ),
      ],
    );
  }
}
