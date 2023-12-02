import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

mixin PermanenceTimeMixin {
  DateTime get startingDate;
  DateTime? get endingDate;

  String permanence(BuildContext context) =>
      '${startingDate.year} - ${endingDate?.year ?? FlutterI18n.translate(
            context,
            'curriculum.currentlyOn',
          )}';
}
