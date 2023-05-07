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

final kLightTitleMediumTextStyle = _baseFont.copyWith(
  color: const Color(0xff989AA2),
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

final kLightTitleSmallTextStyle = _baseFont.copyWith(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w600,
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
  fontWeight: FontWeight.w700,
);


final kLightBodySmallTextStyle = _baseFont.copyWith(
  color: const Color(0xffD1D1D1),
  fontSize: 14,
);



/// Label text styles
final kLightLabelLargeTextStyle = _baseFont.copyWith(
  color: const Color(0xff7C7E87),
  fontSize: 14,
);

final kLightLabelSmallTextStyle = _baseFont.copyWith(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 10,
);
