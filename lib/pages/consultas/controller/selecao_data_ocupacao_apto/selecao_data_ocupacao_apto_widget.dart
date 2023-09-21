import '/components/menu_home_desktop_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selecao_data_ocupacao_apto_model.dart';
export 'selecao_data_ocupacao_apto_model.dart';

class SelecaoDataOcupacaoAptoWidget extends StatefulWidget {
  const SelecaoDataOcupacaoAptoWidget({Key? key}) : super(key: key);

  @override
  _SelecaoDataOcupacaoAptoWidgetState createState() =>
      _SelecaoDataOcupacaoAptoWidgetState();
}

class _SelecaoDataOcupacaoAptoWidgetState
    extends State<SelecaoDataOcupacaoAptoWidget> {
  late SelecaoDataOcupacaoAptoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelecaoDataOcupacaoAptoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().controlePaginaDesktop = 2;
        FFAppState().controlePaginaMobile = 2;
        FFAppState().controlePaginasTablet = 2;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 20.0, 20.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Rm_Desenvolvimento_-_Transparente(1)_(1).png',
                              width: 300.0,
                              height: 167.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              'Sistema de Reservas',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF056CF2),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              'Ocupação Apartamento - Selecione a Data',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF056CF2),
                                  ),
                            ),
                          ),
                          FlutterFlowCalendar(
                            color: FlutterFlowTheme.of(context).primary,
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            weekFormat: false,
                            weekStartsMonday: false,
                            rowHeight: 64.0,
                            onChange: (DateTimeRange? newSelectedDate) {
                              setState(() => _model.calendarSelectedDay1 =
                                  newSelectedDate);
                            },
                            titleStyle:
                                FlutterFlowTheme.of(context).headlineSmall,
                            dayOfWeekStyle:
                                FlutterFlowTheme.of(context).labelLarge,
                            dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                            selectedDateStyle:
                                FlutterFlowTheme.of(context).titleSmall,
                            inactiveDateStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.88),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.00, 1.00),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('pagina_Home');
                                    },
                                    text: 'Voltar',
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 30.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF056CF2),
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.00, 1.00),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('pagina_ocupacao_apto');
                                    },
                                    text: 'Avançar',
                                    icon: Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 30.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF056CF2),
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300.0,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: wrapWithModel(
                            model: _model.menuHomeDesktopModel,
                            updateCallback: () => setState(() {}),
                            child: MenuHomeDesktopWidget(),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 50.0,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    50.0, 50.0, 50.0, 50.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Ocupação Apartamento - Selecione uma data',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF056CF2),
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    FlutterFlowCalendar(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      weekFormat: false,
                                      weekStartsMonday: false,
                                      rowHeight: 64.0,
                                      onChange:
                                          (DateTimeRange? newSelectedDate) {
                                        setState(() =>
                                            _model.calendarSelectedDay2 =
                                                newSelectedDate);
                                      },
                                      titleStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall,
                                      dayOfWeekStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelLarge,
                                      dateStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      selectedDateStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleSmall,
                                      inactiveDateStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium,
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed('pagina_Home');
                                            },
                                            text: 'Voltar',
                                            icon: Icon(
                                              Icons.arrow_back_ios_outlined,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF056CF2),
                                                  ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed(
                                                  'pagina_ocupacao_apto');
                                            },
                                            text: 'Avançar',
                                            icon: Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF056CF2),
                                                  ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 0.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Rm_Desenvolvimento_-_Transparente(1)_(1).png',
                                      width: 495.0,
                                      height: 291.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Text(
                                    'Sistema de Reservas',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFF056CF2),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 685.0,
                                height: 655.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: FlutterFlowCalendar(
                                  color: Color(0xFF056CF2),
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  weekFormat: false,
                                  weekStartsMonday: false,
                                  rowHeight: 64.0,
                                  onChange: (DateTimeRange? newSelectedDate) {
                                    setState(() => _model.calendarSelectedDay3 =
                                        newSelectedDate);
                                  },
                                  titleStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall,
                                  dayOfWeekStyle:
                                      FlutterFlowTheme.of(context).labelLarge,
                                  dateStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  selectedDateStyle:
                                      FlutterFlowTheme.of(context).titleSmall,
                                  inactiveDateStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('pagina_Home');
                                },
                                text: 'Voltar',
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF056CF2),
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
                                onPressed: () async {
                                  context.pushNamed('pagina_ocupacao_apto');
                                },
                                text: 'Avançar',
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF056CF2),
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
