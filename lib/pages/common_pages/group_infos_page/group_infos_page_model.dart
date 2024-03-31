import '/flutter_flow/flutter_flow_util.dart';
import 'group_infos_page_widget.dart' show GroupInfosPageWidget;
import 'package:flutter/material.dart';

class GroupInfosPageModel extends FlutterFlowModel<GroupInfosPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
