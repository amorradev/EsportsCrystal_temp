import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Convert TimeOfDay to String
String formatTimeOfDay(TimeOfDay tod) {
  final now = DateTime.now();
  final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
  final format = DateFormat.jm();  //"6:00 AM"
  return format.format(dt);
}

/// Convert String to TimeOfDay
TimeOfDay stringToTimeOfDay(String tod) {
  final format = DateFormat.jm(); //"6:00 AM"
  return TimeOfDay.fromDateTime(format.parse(tod));
}

