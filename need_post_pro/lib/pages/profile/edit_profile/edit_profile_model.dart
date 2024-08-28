import '/components/cooment/cooment_widget.dart';
import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  Local state fields for this page.

  bool unsavedChanges = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // Model for cooment component.
  late CoomentModel coomentModel1;
  // Model for cooment component.
  late CoomentModel coomentModel2;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
    coomentModel1 = createModel(context, () => CoomentModel());
    coomentModel2 = createModel(context, () => CoomentModel());
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    coomentModel1.dispose();
    coomentModel2.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
