import '/flutter_flow/flutter_flow_util.dart';
import 'ens_dash_board_group_widget.dart' show EnsDashBoardGroupWidget;
import 'package:flutter/material.dart';

class EnsDashBoardGroupModel extends FlutterFlowModel<EnsDashBoardGroupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
