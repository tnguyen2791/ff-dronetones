import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _noteAndLink = prefs
              .getStringList('ff_noteAndLink')
              ?.map((x) {
                try {
                  return NoteAndFileStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _noteAndLink;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<NoteAndFileStruct> _noteAndLink = [
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"A\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/ue6zx28bi19c/Cello_Drone_A.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"Ab\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/p95jaaxmgrcb/Cello_Drone_Ab.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"B\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/vf86c1c1nqrw/Cello_Drone_B.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"Bb\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/oa0zvh06pm04/Cello_Drone_Bb.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"C\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/2vznv3ils7p9/Cello_Drone_C.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"D\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/i7pm5bijegis/Cello_Drone_D.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"Db\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/j77db3676nwb/Cello_Drone_Db.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"E\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/38peuiw8lyzh/Cello_Drone_E.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"Eb\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/i8ct4gg7wwm7/Cello_Drone_Eb.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"F\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/3bkb69231z25/Cello_Drone_F.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"G\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/c86zc7jhty46/Cello_Drone_G.mp3\"}')),
    NoteAndFileStruct.fromSerializableMap(jsonDecode(
        '{\"noteName\":\"Gb\",\"networkLink\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drone-tones-66by7j/assets/tgomycr126rz/Cello_Drone_Gb.mp3\"}'))
  ];
  List<NoteAndFileStruct> get noteAndLink => _noteAndLink;
  set noteAndLink(List<NoteAndFileStruct> value) {
    _noteAndLink = value;
    prefs.setStringList(
        'ff_noteAndLink', value.map((x) => x.serialize()).toList());
  }

  void addToNoteAndLink(NoteAndFileStruct value) {
    _noteAndLink.add(value);
    prefs.setStringList(
        'ff_noteAndLink', _noteAndLink.map((x) => x.serialize()).toList());
  }

  void removeFromNoteAndLink(NoteAndFileStruct value) {
    _noteAndLink.remove(value);
    prefs.setStringList(
        'ff_noteAndLink', _noteAndLink.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromNoteAndLink(int index) {
    _noteAndLink.removeAt(index);
    prefs.setStringList(
        'ff_noteAndLink', _noteAndLink.map((x) => x.serialize()).toList());
  }

  void updateNoteAndLinkAtIndex(
    int index,
    NoteAndFileStruct Function(NoteAndFileStruct) updateFn,
  ) {
    _noteAndLink[index] = updateFn(_noteAndLink[index]);
    prefs.setStringList(
        'ff_noteAndLink', _noteAndLink.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInNoteAndLink(int index, NoteAndFileStruct value) {
    _noteAndLink.insert(index, value);
    prefs.setStringList(
        'ff_noteAndLink', _noteAndLink.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
