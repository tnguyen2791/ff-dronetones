// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import 'package:just_audio_platform_interface/just_audio_platform_interface.dart';

Future audioSourceChange(
  BuildContext context,
  String audioAssetPath,
) async {
  // using the current audio player: stop the audio, change the audio asset path , and then play it.
  await player.dispose();
  await player.stop();
  await player.setAsset(audioAssetPath);
  await player.play();
}
