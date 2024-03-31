import '/flutter_flow/flutter_flow_util.dart';
import 'gest_dept_etudiant_widget.dart' show GestDeptEtudiantWidget;
import 'package:flutter/material.dart';

class GestDeptEtudiantModel extends FlutterFlowModel<GestDeptEtudiantWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
