import '/components/dept_list_details_admin_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'liste_dept_page_widget.dart' show ListeDeptPageWidget;
import 'package:flutter/material.dart';

class ListeDeptPageModel extends FlutterFlowModel<ListeDeptPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for deptListDetailsAdminCard component.
  late DeptListDetailsAdminCardModel deptListDetailsAdminCardModel;

  @override
  void initState(BuildContext context) {
    deptListDetailsAdminCardModel =
        createModel(context, () => DeptListDetailsAdminCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    deptListDetailsAdminCardModel.dispose();
  }
}
