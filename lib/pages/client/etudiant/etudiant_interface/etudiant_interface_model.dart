import '/flutter_flow/flutter_flow_util.dart';
import 'etudiant_interface_widget.dart' show EtudiantInterfaceWidget;
import 'package:flutter/material.dart';

class EtudiantInterfaceModel extends FlutterFlowModel<EtudiantInterfaceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
