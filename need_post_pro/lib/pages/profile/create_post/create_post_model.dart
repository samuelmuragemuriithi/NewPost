import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_post_widget.dart' show CreatePostWidget;
import 'package:flutter/material.dart';

class CreatePostModel extends FlutterFlowModel<CreatePostWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for item widget.
  FocusNode? itemFocusNode;
  TextEditingController? itemTextController;
  String? Function(BuildContext, String?)? itemTextControllerValidator;
  String? _itemTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required ';
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  String? _locationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for status widget.
  FocusNode? statusFocusNode;
  TextEditingController? statusTextController;
  String? Function(BuildContext, String?)? statusTextControllerValidator;
  String? _statusTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for image_url widget.
  FocusNode? imageUrlFocusNode;
  TextEditingController? imageUrlTextController;
  String? Function(BuildContext, String?)? imageUrlTextControllerValidator;
  String? _imageUrlTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in testbutton widget.
  bool? validated;
  // Stores action output result for [Backend Call - Create Document] action in testbutton widget.
  NeedPostRecord? nn;

  @override
  void initState(BuildContext context) {
    itemTextControllerValidator = _itemTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    locationTextControllerValidator = _locationTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
    statusTextControllerValidator = _statusTextControllerValidator;
    imageUrlTextControllerValidator = _imageUrlTextControllerValidator;
  }

  @override
  void dispose() {
    itemFocusNode?.dispose();
    itemTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    statusFocusNode?.dispose();
    statusTextController?.dispose();

    imageUrlFocusNode?.dispose();
    imageUrlTextController?.dispose();
  }
}
