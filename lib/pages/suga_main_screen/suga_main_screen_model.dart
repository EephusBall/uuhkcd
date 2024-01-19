import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'suga_main_screen_widget.dart' show SugaMainScreenWidget;
import 'package:flutter/material.dart';

class SugaMainScreenModel extends FlutterFlowModel<SugaMainScreenWidget> {
  ///  Local state fields for this page.

  String isActionCompleted = '';

  List<dynamic> sugaJson = [];
  void addToSugaJson(dynamic item) => sugaJson.add(item);
  void removeFromSugaJson(dynamic item) => sugaJson.remove(item);
  void removeAtIndexFromSugaJson(int index) => sugaJson.removeAt(index);
  void insertAtIndexInSugaJson(int index, dynamic item) =>
      sugaJson.insert(index, item);
  void updateSugaJsonAtIndex(int index, Function(dynamic) updateFn) =>
      sugaJson[index] = updateFn(sugaJson[index]);

  bool lbAction = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Search Suga Name)] action in Button widget.
  ApiCallResponse? apiResultesg;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
