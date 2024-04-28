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

Future initializeAudioSessionAndOneAudioPlayer() async {
  // Initialize and audio session and one audio player for the application.
// Initialize audio session
  final session = await AudioSession.instance;
  await session.configure(AudioSessionConfiguration.speech());

// Initialize audio player
  final player = AudioPlayer();
  await player.setAudioSource(AudioSource.uri(Uri.parse(
      'https://www2.cs.uic.edu/~i101/SoundFiles/ImperialMarch60.wav')));

// Return the initialized audio player
  return player;
}
