import '/flutter_flow/flutter_flow_util.dart';
import 'inscription_echoue_page_widget.dart' show InscriptionEchouePageWidget;
import 'package:flutter/material.dart';

class InscriptionEchouePageModel
    extends FlutterFlowModel<InscriptionEchouePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
