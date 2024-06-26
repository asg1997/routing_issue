import 'dart:io';

String get systemLocale {
  final localeName = Platform.localeName;
  if (localeName.contains('_')) {
    return localeName.split('_').first;
  } else {
    return localeName;
  }
}
