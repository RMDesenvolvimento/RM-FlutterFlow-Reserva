import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.white,
                child: Center(
                  child: Image.asset(
                    'assets/images/Rm_Desenvolvimento_-_Transparente(1)_(1).png',
                    width: 400.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : PaginaLoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.white,
                    child: Center(
                      child: Image.asset(
                        'assets/images/Rm_Desenvolvimento_-_Transparente(1)_(1).png',
                        width: 400.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : PaginaLoginWidget(),
        ),
        FFRoute(
          name: 'pagina_ocupacao_apto',
          path: '/paginaOcupacaoApto',
          builder: (context, params) => PaginaOcupacaoAptoWidget(),
        ),
        FFRoute(
          name: 'pagina_diaria_media',
          path: '/paginaDiariaMedia',
          builder: (context, params) => PaginaDiariaMediaWidget(),
        ),
        FFRoute(
          name: 'pagina_venda_setor',
          path: '/paginaVendaSetor',
          builder: (context, params) => PaginaVendaSetorWidget(),
        ),
        FFRoute(
          name: 'selecao_data_ocupacao_apto',
          path: '/selecaoDataOcupacaoApto',
          builder: (context, params) => SelecaoDataOcupacaoAptoWidget(),
        ),
        FFRoute(
          name: 'selecao_data_diaria',
          path: '/selecaoDataDiaria',
          builder: (context, params) => SelecaoDataDiariaWidget(),
        ),
        FFRoute(
          name: 'selecao_data_produtos',
          path: '/selecaoDataProdutos',
          builder: (context, params) => SelecaoDataProdutosWidget(),
        ),
        FFRoute(
          name: 'selecao_data_setor',
          path: '/selecaoDataSetor',
          builder: (context, params) => SelecaoDataSetorWidget(),
        ),
        FFRoute(
          name: 'pagina_Login',
          path: '/paginaLogin',
          builder: (context, params) => PaginaLoginWidget(),
        ),
        FFRoute(
          name: 'pagina_Home',
          path: '/paginaHome',
          builder: (context, params) => PaginaHomeWidget(),
        ),
        FFRoute(
          name: 'pagina_grafico_taxa',
          path: '/paginaGraficoTaxa',
          builder: (context, params) => PaginaGraficoTaxaWidget(),
        ),
        FFRoute(
          name: 'pagina_grafico_ocupacao',
          path: '/paginaGraficoOcupacao',
          builder: (context, params) => PaginaGraficoOcupacaoWidget(),
        ),
        FFRoute(
          name: 'pagina_venda_produtos',
          path: '/paginaVendaProdutos',
          builder: (context, params) => PaginaVendaProdutosWidget(),
        ),
        FFRoute(
          name: 'selecao_data_ocupacao_grafico',
          path: '/selecaoDataOcupacaoGrafico',
          builder: (context, params) => SelecaoDataOcupacaoGraficoWidget(),
        ),
        FFRoute(
          name: 'selecao_data_taxa_grafico',
          path: '/selecaoDataTaxaGrafico',
          builder: (context, params) => SelecaoDataTaxaGraficoWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
