// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NoteAndFileStruct extends BaseStruct {
  NoteAndFileStruct({
    String? noteName,
    String? networkLink,
  })  : _noteName = noteName,
        _networkLink = networkLink;

  // "noteName" field.
  String? _noteName;
  String get noteName => _noteName ?? 'A';
  set noteName(String? val) => _noteName = val;
  bool hasNoteName() => _noteName != null;

  // "networkLink" field.
  String? _networkLink;
  String get networkLink => _networkLink ?? 'assets/audios/Cello_Drone_A.mp3';
  set networkLink(String? val) => _networkLink = val;
  bool hasNetworkLink() => _networkLink != null;

  static NoteAndFileStruct fromMap(Map<String, dynamic> data) =>
      NoteAndFileStruct(
        noteName: data['noteName'] as String?,
        networkLink: data['networkLink'] as String?,
      );

  static NoteAndFileStruct? maybeFromMap(dynamic data) => data is Map
      ? NoteAndFileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'noteName': _noteName,
        'networkLink': _networkLink,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'noteName': serializeParam(
          _noteName,
          ParamType.String,
        ),
        'networkLink': serializeParam(
          _networkLink,
          ParamType.String,
        ),
      }.withoutNulls;

  static NoteAndFileStruct fromSerializableMap(Map<String, dynamic> data) =>
      NoteAndFileStruct(
        noteName: deserializeParam(
          data['noteName'],
          ParamType.String,
          false,
        ),
        networkLink: deserializeParam(
          data['networkLink'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NoteAndFileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NoteAndFileStruct &&
        noteName == other.noteName &&
        networkLink == other.networkLink;
  }

  @override
  int get hashCode => const ListEquality().hash([noteName, networkLink]);
}

NoteAndFileStruct createNoteAndFileStruct({
  String? noteName,
  String? networkLink,
}) =>
    NoteAndFileStruct(
      noteName: noteName,
      networkLink: networkLink,
    );
