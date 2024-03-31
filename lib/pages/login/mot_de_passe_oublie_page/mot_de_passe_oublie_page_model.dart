import '/flutter_flow/flutter_flow_util.dart';
import 'mot_de_passe_oublie_page_widget.dart' show MotDePasseOubliePageWidget;
import 'package:flutter/material.dart';

class MotDePasseOubliePageModel
    extends FlutterFlowModel<MotDePasseOubliePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
