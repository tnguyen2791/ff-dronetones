import '/components/custom_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'note_widget.dart' show NoteWidget;
import 'package:flutter/material.dart';

class NoteModel extends FlutterFlowModel<NoteWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for customComponent component.
  late CustomComponentModel customComponentModel;

  @override
  void initState(BuildContext context) {
    customComponentModel = createModel(context, () => CustomComponentModel());
  }

  @override
  void dispose() {
    customComponentModel.dispose();
  }
}
