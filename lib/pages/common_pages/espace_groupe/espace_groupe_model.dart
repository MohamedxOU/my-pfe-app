import '/flutter_flow/flutter_flow_util.dart';
import 'espace_groupe_widget.dart' show EspaceGroupeWidget;
import 'package:flutter/material.dart';

class EspaceGroupeModel extends FlutterFlowModel<EspaceGroupeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
