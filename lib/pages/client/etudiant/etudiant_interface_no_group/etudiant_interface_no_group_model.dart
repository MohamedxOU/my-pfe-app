import '/flutter_flow/flutter_flow_util.dart';
import 'etudiant_interface_no_group_widget.dart'
    show EtudiantInterfaceNoGroupWidget;
import 'package:flutter/material.dart';

class EtudiantInterfaceNoGroupModel
    extends FlutterFlowModel<EtudiantInterfaceNoGroupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
