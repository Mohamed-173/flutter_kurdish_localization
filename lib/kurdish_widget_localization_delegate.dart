import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class _KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KurdishMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      KurdishWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(_KurdishMaterialLocalizationsDelegate old) => false;
}

class KurdishWidgetLocalizations extends WidgetsLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _KurdishMaterialLocalizationsDelegate();

  @override
  TextDirection get textDirection => TextDirection.rtl;

  // Button labels
  @override
  String get copyButtonLabel => 'کۆپی کردن';

  @override
  String get cutButtonLabel => 'بڕین';

  @override
  String get pasteButtonLabel => 'لکاندن';

  @override
  String get selectAllButtonLabel => 'هەموو هەڵبژاردن';

  @override
  String get lookUpButtonLabel => 'گەڕان';

  @override
  String get searchWebButtonLabel => 'گەڕان لە وێب';

  @override
  String get shareButtonLabel => 'هاوبەشکردن';

  // Reorder items
  @override
  String get reorderItemDown => 'بەرەو خوارەوە';

  @override
  String get reorderItemLeft => 'بەرەو چەپ';

  @override
  String get reorderItemRight => 'بەرەو ڕاست';

  @override
  String get reorderItemToEnd => 'بەرەو کۆتایی';

  @override
  String get reorderItemToStart => 'بەرەو سەرەتا';

  @override
  String get reorderItemUp => 'بەرەو سەرەوە';
}
