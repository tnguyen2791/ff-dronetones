import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String randomItemInList(List<String> listOfStrings) {
  // Given a listen, randomly pick between any of the items in the list.
  final random = math.Random();
  final index = random.nextInt(listOfStrings.length);
  return listOfStrings[index];
}
