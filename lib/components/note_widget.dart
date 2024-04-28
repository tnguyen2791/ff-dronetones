import '/backend/schema/structs/index.dart';
import '/components/custom_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'note_model.dart';
export 'note_model.dart';

class NoteWidget extends StatefulWidget {
  const NoteWidget({
    super.key,
    required this.noteAndLink,
    this.stopThePlaying,
  });

  final NoteAndFileStruct? noteAndLink;
  final Future Function()? stopThePlaying;

  @override
  State<NoteWidget> createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {
  late NoteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wrapWithModel(
      model: _model.customComponentModel,
      updateCallback: () => setState(() {}),
      child: CustomComponentWidget(
        parameter1: valueOrDefault<String>(
          widget.noteAndLink?.noteName,
          'noteName',
        ),
        parameter2: widget.noteAndLink?.networkLink,
      ),
    );
  }
}
