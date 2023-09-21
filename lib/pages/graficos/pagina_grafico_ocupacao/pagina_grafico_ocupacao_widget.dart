import '/components/menu_home_desktop_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagina_grafico_ocupacao_model.dart';
export 'pagina_grafico_ocupacao_model.dart';

class PaginaGraficoOcupacaoWidget extends StatefulWidget {
  const PaginaGraficoOcupacaoWidget({Key? key}) : super(key: key);

  @override
  _PaginaGraficoOcupacaoWidgetState createState() =>
      _PaginaGraficoOcupacaoWidgetState();
}

class _PaginaGraficoOcupacaoWidgetState
    extends State<PaginaGraficoOcupacaoWidget> {
  late PaginaGraficoOcupacaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaGraficoOcupacaoModel());

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
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().controlePaginaDesktop = 4;
                    });
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: Row(
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
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 20.0, 20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              context.safePop();
                                            },
                                            text: 'Voltar',
                                            icon: Icon(
                                              Icons.arrow_back_ios,
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
                                          Text(
                                            'Gráfico Taxa',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Color(0xFF056CF2),
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 646.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Container(
                                                width: 774.0,
                                                height: 520.0,
                                                child: FlutterFlowLineChart(
                                                  data: [
                                                    FFLineChartData(
                                                      xData: List.generate(
                                                          random_data
                                                              .randomInteger(
                                                                  0, 0),
                                                          (index) => random_data
                                                              .randomInteger(
                                                                  1, 10)),
                                                      yData: List.generate(
                                                          random_data
                                                              .randomInteger(
                                                                  0, 0),
                                                          (index) => random_data
                                                              .randomInteger(
                                                                  1, 10)),
                                                      settings:
                                                          LineChartBarData(
                                                        color:
                                                            Color(0xFF0511F2),
                                                        barWidth: 2.0,
                                                        isCurved: true,
                                                        dotData: FlDotData(
                                                            show: false),
                                                        belowBarData:
                                                            BarAreaData(
                                                          show: true,
                                                          color:
                                                              Color(0xFF056CF2),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                  chartStylingInfo:
                                                      ChartStylingInfo(
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    showBorder: false,
                                                  ),
                                                  axisBounds: AxisBounds(),
                                                  xAxisLabelInfo:
                                                      AxisLabelInfo(),
                                                  yAxisLabelInfo:
                                                      AxisLabelInfo(),
                                                ),
                                              ),
                                            ],
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
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        setState(() {
                          FFAppState().controlePaginaMobile = 4;
                        });
                      },
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Rm_Desenvolvimento_-_Transparente(1)_(1).png',
                                            width: 300.0,
                                            height: 224.0,
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
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 487.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 20.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    ListView(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: [
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 405.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Container(
                                                                width: 370.0,
                                                                height: 120.0,
                                                                child:
                                                                    FlutterFlowLineChart(
                                                                  data: [
                                                                    FFLineChartData(
                                                                      xData: List.generate(
                                                                          random_data.randomInteger(
                                                                              0,
                                                                              0),
                                                                          (index) => random_data.randomInteger(
                                                                              0,
                                                                              10)),
                                                                      yData: List.generate(
                                                                          random_data.randomInteger(
                                                                              0,
                                                                              0),
                                                                          (index) => random_data.randomInteger(
                                                                              0,
                                                                              10)),
                                                                      settings:
                                                                          LineChartBarData(
                                                                        color: Color(
                                                                            0xFF0511F2),
                                                                        barWidth:
                                                                            2.0,
                                                                        isCurved:
                                                                            true,
                                                                        dotData:
                                                                            FlDotData(show: false),
                                                                        belowBarData:
                                                                            BarAreaData(
                                                                          show:
                                                                              true,
                                                                          color:
                                                                              Color(0xFF056CF2),
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                  chartStylingInfo:
                                                                      ChartStylingInfo(
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    showBorder:
                                                                        false,
                                                                  ),
                                                                  axisBounds:
                                                                      AxisBounds(),
                                                                  xAxisLabelInfo:
                                                                      AxisLabelInfo(),
                                                                  yAxisLabelInfo:
                                                                      AxisLabelInfo(),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                  'selecao_dataGrafico_Taxa');
                                                            },
                                                            text: 'Voltar',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_return,
                                                              size: 15.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Color(
                                                                            0xFF056CF2),
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().controlePaginasTablet = 4;
                    });
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
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
                                  width: 491.0,
                                  height: 655.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 507.0,
                                        height: 610.0,
                                        child: FlutterFlowLineChart(
                                          data: [
                                            FFLineChartData(
                                              xData: List.generate(
                                                  random_data.randomInteger(
                                                      0, 0),
                                                  (index) => random_data
                                                      .randomInteger(0, 10)),
                                              yData: List.generate(
                                                  random_data.randomInteger(
                                                      0, 0),
                                                  (index) => random_data
                                                      .randomInteger(0, 10)),
                                              settings: LineChartBarData(
                                                color: Color(0xFF0511F2),
                                                barWidth: 2.0,
                                                isCurved: true,
                                                dotData: FlDotData(show: false),
                                                belowBarData: BarAreaData(
                                                  show: true,
                                                  color: Color(0xFF056CF2),
                                                ),
                                              ),
                                            )
                                          ],
                                          chartStylingInfo: ChartStylingInfo(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            showBorder: false,
                                          ),
                                          axisBounds: AxisBounds(),
                                          xAxisLabelInfo: AxisLabelInfo(),
                                          yAxisLabelInfo: AxisLabelInfo(),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.00, 1.00),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                    text: 'Voltar',
                                    icon: Icon(
                                      Icons.keyboard_return,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
