import '/backend/backend.dart';
import '/components/meal_card_loading/meal_card_loading_widget.dart';
import '/components/post_card/post_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Dashboard'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DASHBOARD_PAGE_Dashboard_ON_INIT_STATE');
      logFirebaseEvent('Dashboard_haptic_feedback');
      HapticFeedback.mediumImpact();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'This week\'s Posts',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                      child: Text(
                        'Bridge the Gap Between Needs and Solutions.',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child:
                      PagedGridView<DocumentSnapshot<Object?>?, NeedPostRecord>(
                    pagingController: _model.setGridViewController(
                      NeedPostRecord.collection,
                    ),
                    padding: EdgeInsets.zero,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 0.78,
                    ),
                    scrollDirection: Axis.vertical,
                    builderDelegate: PagedChildBuilderDelegate<NeedPostRecord>(
                      // Customize what your widget looks like when it's loading the first page.
                      firstPageProgressIndicatorBuilder: (_) =>
                          const MealCardLoadingWidget(),
                      // Customize what your widget looks like when it's loading another page.
                      newPageProgressIndicatorBuilder: (_) =>
                          const MealCardLoadingWidget(),
                      noItemsFoundIndicatorBuilder: (_) => const SizedBox(
                        width: double.infinity,
                        child: MealCardLoadingWidget(),
                      ),
                      itemBuilder: (context, _, gridViewIndex) {
                        final gridViewNeedPostRecord = _model
                            .gridViewPagingController!.itemList![gridViewIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'DASHBOARD_PAGE_Container_8y3urvms_ON_TAP');
                            logFirebaseEvent('postCard_navigate_to');

                            context.pushNamed(
                              'OpenPost',
                              queryParameters: {
                                'item': serializeParam(
                                  gridViewNeedPostRecord.item,
                                  ParamType.String,
                                ),
                                'description': serializeParam(
                                  gridViewNeedPostRecord.description,
                                  ParamType.String,
                                ),
                                'location': serializeParam(
                                  gridViewNeedPostRecord.location,
                                  ParamType.String,
                                ),
                                'price': serializeParam(
                                  gridViewNeedPostRecord.price,
                                  ParamType.String,
                                ),
                                'status': serializeParam(
                                  gridViewNeedPostRecord.status,
                                  ParamType.String,
                                ),
                                'image': serializeParam(
                                  gridViewNeedPostRecord.imageUrl,
                                  ParamType.String,
                                ),
                                'ref': serializeParam(
                                  gridViewNeedPostRecord.reference,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.postCardModels.getModel(
                              gridViewIndex.toString(),
                              gridViewIndex,
                            ),
                            updateCallback: () => setState(() {}),
                            child: PostCardWidget(
                              key: Key(
                                'Key8y3_${gridViewIndex.toString()}',
                              ),
                              price: valueOrDefault<String>(
                                gridViewNeedPostRecord.price,
                                'not set',
                              ),
                              service: valueOrDefault<String>(
                                gridViewNeedPostRecord.item,
                                'item Service',
                              ),
                              mealRef: gridViewNeedPostRecord,
                              image: gridViewNeedPostRecord.imageUrl,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
