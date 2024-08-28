import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'open_post_widget.dart' show OpenPostWidget;
import 'package:flutter/material.dart';

class OpenPostModel extends FlutterFlowModel<OpenPostWidget> {
  ///  Local state fields for this page.

  List<String> coments = [];
  void addToComents(String item) => coments.add(item);
  void removeFromComents(String item) => coments.remove(item);
  void removeAtIndexFromComents(int index) => coments.removeAt(index);
  void insertAtIndexInComents(int index, String item) =>
      coments.insert(index, item);
  void updateComentsAtIndex(int index, Function(String) updateFn) =>
      coments[index] = updateFn(coments[index]);

  bool iscoment = true;

  DocumentReference? comment;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customAppbarModel.dispose();
  }
}
