import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDark = StateNotifierProvider<ColorMode, bool>((ref) {
  return ColorMode();
});

class ColorMode extends StateNotifier<bool> {
  ColorMode() : super(false);

  void toggle() {
    state = !state;
  }
}