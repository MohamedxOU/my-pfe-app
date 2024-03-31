import '/flutter_flow/flutter_flow_util.dart';
import 'joindre_group_screen_widget.dart' show JoindreGroupScreenWidget;
import 'package:flutter/material.dart';

class JoindreGroupScreenModel
    extends FlutterFlowModel<JoindreGroupScreenWidget> {
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
