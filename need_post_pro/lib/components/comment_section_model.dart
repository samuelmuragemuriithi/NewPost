import '/flutter_flow/flutter_flow_util.dart';
import 'comment_section_widget.dart' show CommentSectionWidget;
import 'package:flutter/material.dart';

class CommentSectionModel extends FlutterFlowModel<CommentSectionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
