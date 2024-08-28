import '/backend/backend.dart';
import '/components/post_card/post_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GridView widget.

  PagingController<DocumentSnapshot?, NeedPostRecord>? gridViewPagingController;
  Query? gridViewPagingQuery;

  // Models for postCard dynamic component.
  late FlutterFlowDynamicModels<PostCardModel> postCardModels;

  @override
  void initState(BuildContext context) {
    postCardModels = FlutterFlowDynamicModels(() => PostCardModel());
  }

  @override
  void dispose() {
    gridViewPagingController?.dispose();

    postCardModels.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, NeedPostRecord> setGridViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    gridViewPagingController ??= _createGridViewController(query, parent);
    if (gridViewPagingQuery != query) {
      gridViewPagingQuery = query;
      gridViewPagingController?.refresh();
    }
    return gridViewPagingController!;
  }

  PagingController<DocumentSnapshot?, NeedPostRecord> _createGridViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, NeedPostRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryNeedPostRecordPage(
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 25,
          isStream: false,
        ),
      );
  }
}
