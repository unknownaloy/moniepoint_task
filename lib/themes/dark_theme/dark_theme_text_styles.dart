import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _baseFont = GoogleFonts.jost();

/// Display text styles
final kDarkDisplayLargeTextStyle = _baseFont.copyWith(
  color: Colors.white,
  fontSize: 24,
  fontWeight: FontWeight.w700,
);

final kDarkDisplayMediumTextStyle = _baseFont.copyWith(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w600,
);


/// Title text styles
final kDarkTitleLargeTextStyle = _baseFont.copyWith(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

final kDarkTitleMediumTextStyle = _baseFont.copyWith(
  color: const Color(0xff989AA2),
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

final kDarkTitleSmallTextStyle = _baseFont.copyWith(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

/// Body text styles
final kDarkBodyLargeTextStyle = _baseFont.copyWith(
  color: const Color(0xff4BB198),
  fontSize: 18,
  fontWeight: FontWeight.w600,
);


final kDarkBodyMediumTextStyle = _baseFont.copyWith(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w700,
);


final kDarkBodySmallTextStyle = _baseFont.copyWith(
  color: const Color(0xffD1D1D1),
  fontSize: 14,
);



/// Label text styles
final kDarkLabelLargeTextStyle = _baseFont.copyWith(
  color: const Color(0xff7C7E87),
  fontSize: 14,
);

final kDarkLabelSmallTextStyle = _baseFont.copyWith(
  color: Colors.white,
  fontWeight: FontWeight.w500,
  fontSize: 10,
);
