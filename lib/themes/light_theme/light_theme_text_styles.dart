import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _baseFont = GoogleFonts.jost();

/// Display text styles
final kLightDisplayLargeTextStyle = _baseFont.copyWith(
  color: Colors.black,
  fontSize: 24,
  fontWeight: FontWeight.w700,
);

final kLightDisplayMediumTextStyle = _baseFont.copyWith(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w600,
);


/// Title text styles
final kLightTitleLargeTextStyle = _baseFont.copyWith(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

/// Body text styles
final kLightBodyLargeTextStyle = _baseFont.copyWith(
  color: const Color(0xff4BB198),
  fontSize: 18,
  fontWeight: FontWeight.w600,
);


final kLightBodyMediumTextStyle = _baseFont.copyWith(
  color: Colors.black,
  fontSize: 16,
);


final kLightBodySmallTextStyle = _baseFont.copyWith(
  color: const Color(0xffD1D1D1),
  fontSize: 14,
);



/// Label text styles
final kLightLabelSmallTextStyle = _baseFont.copyWith(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 10,
);
