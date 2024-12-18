import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFEBFAFF);
  static const Color secondaryColor = Color(0xFFB8E5FF);

  static const LinearGradient primaryGradient1 = LinearGradient(
      colors: [Color(0xFFEBFAFF), Color(0xFFB8E5FF)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  static const LinearGradient primaryGradient2 = LinearGradient(
      colors: [Color(0xFFF8EFFC), Color(0xFFEAD3F7)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  static const LinearGradient primaryGradient3 = LinearGradient(
      colors: [Color(0xFFFEF9F0), Color(0xFFFFF5E0)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}
