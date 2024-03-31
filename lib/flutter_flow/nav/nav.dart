import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

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
      errorBuilder: (context, state) => const LoginScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const LoginScreenWidget(),
        ),
        FFRoute(
          name: 'LoginScreen',
          path: '/loginScreen',
          builder: (context, params) => const LoginScreenWidget(),
        ),
        FFRoute(
          name: 'Inscription',
          path: '/inscription',
          builder: (context, params) => const InscriptionWidget(),
        ),
        FFRoute(
          name: 'MotDePasseOubliePage',
          path: '/motDePasseOubliePage',
          builder: (context, params) => const MotDePasseOubliePageWidget(),
        ),
        FFRoute(
          name: 'contactSupport',
          path: '/contactSupport',
          builder: (context, params) => const ContactSupportWidget(),
        ),
        FFRoute(
          name: 'adminDashBoard',
          path: '/adminDashBoard',
          builder: (context, params) => const AdminDashBoardWidget(),
        ),
        FFRoute(
          name: 'addUsersPage',
          path: '/addUsersPage',
          builder: (context, params) => const AddUsersPageWidget(),
        ),
        FFRoute(
          name: 'listeDeptPage',
          path: '/listeDeptPage',
          builder: (context, params) => const ListeDeptPageWidget(),
        ),
        FFRoute(
          name: 'listeUsersPage',
          path: '/listeUsersPage',
          builder: (context, params) => const ListeUsersPageWidget(),
        ),
        FFRoute(
          name: 'uploadFilePgae',
          path: '/uploadFilePgae',
          builder: (context, params) => const UploadFilePgaeWidget(),
        ),
        FFRoute(
          name: 'Conversation',
          path: '/conversation',
          builder: (context, params) => const ConversationWidget(),
        ),
        FFRoute(
          name: 'settingsPage',
          path: '/settingsPage',
          builder: (context, params) => const SettingsPageWidget(),
        ),
        FFRoute(
          name: 'EditerProfilPage',
          path: '/editerProfilPage',
          builder: (context, params) => const EditerProfilPageWidget(),
        ),
        FFRoute(
          name: 'supprimerComptePage',
          path: '/supprimerComptePage',
          builder: (context, params) => const SupprimerComptePageWidget(),
        ),
        FFRoute(
          name: 'ChangerMotDePasse',
          path: '/changerMotDePasse',
          builder: (context, params) => const ChangerMotDePasseWidget(),
        ),
        FFRoute(
          name: 'inscription_succed_page',
          path: '/inscriptionSuccedPage',
          builder: (context, params) => const InscriptionSuccedPageWidget(),
        ),
        FFRoute(
          name: 'inscriptionEchouePage',
          path: '/inscriptionEchouePage',
          builder: (context, params) => const InscriptionEchouePageWidget(),
        ),
        FFRoute(
          name: 'user_details_enter',
          path: '/userDetailsEnter',
          builder: (context, params) => const UserDetailsEnterWidget(),
        ),
        FFRoute(
          name: 'EtudiantInterface',
          path: '/etudiantInterface',
          builder: (context, params) => const EtudiantInterfaceWidget(),
        ),
        FFRoute(
          name: 'EtudiantInterfaceNoGroup',
          path: '/etudiantInterfaceNoGroup',
          builder: (context, params) => const EtudiantInterfaceNoGroupWidget(),
        ),
        FFRoute(
          name: 'JoindreGroupScreen',
          path: '/joindreGroupScreen',
          builder: (context, params) => const JoindreGroupScreenWidget(),
        ),
        FFRoute(
          name: 'EnsDashBoardNoGroup',
          path: '/ensDashBoardNoGroup',
          builder: (context, params) => const EnsDashBoardNoGroupWidget(),
        ),
        FFRoute(
          name: 'EnsDashBoardGroup',
          path: '/ensDashBoardGroup',
          builder: (context, params) => const EnsDashBoardGroupWidget(),
        ),
        FFRoute(
          name: 'ChefDeptInterfaceNoGroupe',
          path: '/chefDeptInterfaceNoGroupe',
          builder: (context, params) => const ChefDeptInterfaceNoGroupeWidget(),
        ),
        FFRoute(
          name: 'ChefDeptInterfaceGroup',
          path: '/chefDeptInterfaceGroup',
          builder: (context, params) => const ChefDeptInterfaceGroupWidget(),
        ),
        FFRoute(
          name: 'GestDeptChefDept',
          path: '/gestDeptChefDept',
          builder: (context, params) => const GestDeptChefDeptWidget(),
        ),
        FFRoute(
          name: 'AddAnnonceDept',
          path: '/addAnnonceDept',
          builder: (context, params) => const AddAnnonceDeptWidget(),
        ),
        FFRoute(
          name: 'GestDeptEns',
          path: '/gestDeptEns',
          builder: (context, params) => const GestDeptEnsWidget(),
        ),
        FFRoute(
          name: 'GestDeptEtudiant',
          path: '/gestDeptEtudiant',
          builder: (context, params) => const GestDeptEtudiantWidget(),
        ),
        FFRoute(
          name: 'EspaceGroupe',
          path: '/espaceGroupe',
          builder: (context, params) => const EspaceGroupeWidget(),
        ),
        FFRoute(
          name: 'GroupInfosPage',
          path: '/groupInfosPage',
          builder: (context, params) => const GroupInfosPageWidget(),
        ),
        FFRoute(
          name: 'AddAnnonceGroup',
          path: '/addAnnonceGroup',
          builder: (context, params) => const AddAnnonceGroupWidget(),
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
    List<String>? collectionNamePath,
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
      collectionNamePath: collectionNamePath,
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
          fixStatusBarOniOS16AndBelow(context);
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
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
