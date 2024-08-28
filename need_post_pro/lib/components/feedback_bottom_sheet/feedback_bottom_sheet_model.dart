import '/flutter_flow/flutter_flow_util.dart';
import 'feedback_bottom_sheet_widget.dart' show FeedbackBottomSheetWidget;
import 'package:flutter/material.dart';

class FeedbackBottomSheetModel
    extends FlutterFlowModel<FeedbackBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for feedback widget.
  FocusNode? feedbackFocusNode;
  TextEditingController? feedbackTextController;
  String? Function(BuildContext, String?)? feedbackTextControllerValidator;
  String? _feedbackTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Feedback is required.';
    }

    if (val.length < 12) {
      return 'Requires at least 12 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    feedbackTextControllerValidator = _feedbackTextControllerValidator;
  }

  @override
  void dispose() {
    feedbackFocusNode?.dispose();
    feedbackTextController?.dispose();
  }
}
