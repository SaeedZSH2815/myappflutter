import 'package:flutter/material.dart';

class AShowDatePicker {
  AShowDatePicker();
  static Future<DateTime?> aShowDatePicker(BuildContext clCtx) {
    return showDatePicker(
            context: clCtx,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(Duration(days: 365)))
        .then((value) => value);
  }
}
