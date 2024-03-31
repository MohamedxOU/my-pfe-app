import '/components/list_users_admin_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'liste_users_page_widget.dart' show ListeUsersPageWidget;
import 'package:flutter/material.dart';

class ListeUsersPageModel extends FlutterFlowModel<ListeUsersPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ListUsersAdminCard component.
  late ListUsersAdminCardModel listUsersAdminCardModel;

  @override
  void initState(BuildContext context) {
    listUsersAdminCardModel =
        createModel(context, () => ListUsersAdminCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    listUsersAdminCardModel.dispose();
  }
}
