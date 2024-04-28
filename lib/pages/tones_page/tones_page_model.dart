import '/flutter_flow/flutter_flow_util.dart';
import 'tones_page_widget.dart' show TonesPageWidget;
import 'package:flutter/material.dart';

class TonesPageModel extends FlutterFlowModel<TonesPageWidget> {
  ///  Local state fields for this page.

  String currentNote = 'A';

  String currentQuote = 'currentQuote';

  bool notePlaying = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
