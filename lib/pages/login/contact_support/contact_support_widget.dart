import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact_support_model.dart';
export 'contact_support_model.dart';

class ContactSupportWidget extends StatefulWidget {
  const ContactSupportWidget({super.key});

  @override
  State<ContactSupportWidget> createState() => _ContactSupportWidgetState();
}

class _ContactSupportWidgetState extends State<ContactSupportWidget>
    with TickerProviderStateMixin {
  late ContactSupportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 110.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 110.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactSupportModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Contact support',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Jost',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bienvenu au support',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Text(
                      'Votre reclamation',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Jost',
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            width: 120.0,
                            constraints: const BoxConstraints(
                              maxWidth: 500.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.local_phone,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 36.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Text(
                                      '0621212148',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            width: 120.0,
                            constraints: const BoxConstraints(
                              maxWidth: 500.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.email_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 36.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Text(
                                      'Email@mail.com',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ),
                      ),
                    ].divide(const SizedBox(width: 12.0)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          controller: _model.textController1,
                          focusNode: _model.textFieldFocusNode1,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Votre Nom',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
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
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                          minLines: null,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.textController1Validator
                              .asValidator(context),
                        ),
                        TextFormField(
                          controller: _model.textController2,
                          focusNode: _model.textFieldFocusNode2,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Votre Emal',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
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
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                          minLines: null,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.textController2Validator
                              .asValidator(context),
                        ),
                        TextFormField(
                          controller: _model.textController3,
                          focusNode: _model.textFieldFocusNode3,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Description de votre reclamation',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
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
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 12.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                          maxLines: 16,
                          minLines: 6,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.textController3Validator
                              .asValidator(context),
                        ),
                      ].divide(const SizedBox(height: 12.0)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await launchUrl(Uri(
                            scheme: 'mailto',
                            path: 'oucharroumohemed@gmail.com',
                            query: {
                              'subject': 'Reclamation app pfe',
                              'body':
                                  '${_model.textController1.text}de email : ${_model.textController2.text}a réclamé ce probleme : ${_model.textController3.text}',
                            }
                                .entries
                                .map((MapEntry<String, String> e) =>
                                    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                .join('&')));
                      },
                      text: 'Validez reclamation',
                      icon: const Icon(
                        Icons.receipt_long,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48.0,
                        padding: const EdgeInsets.all(0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 4.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
