import 'package:flutter/material.dart';
import 'package:uipractice/core/utilis/responsive_font_size.dart';

abstract class Styles {

  static  regular12(context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

    static regular14(context) {
      return  TextStyle(
        color: const Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400,
      );
    }

    static regular16(context) {
      return  TextStyle(
        color: const Color(0xFF064060),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
      );
    }

    static medium16(context) {
      return TextStyle(
        color: const Color(0xFF064061),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
      );
    }

    static semiBold16 (context) {
      return  TextStyle(
        color: const Color(0xFF064061),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w600,
      );
    }

    static  bold16(context) {
      return TextStyle(
        color: const Color(0xFF4EB7F2),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w700,
      );
    }

    static semiBold18 (context) {
      return TextStyle(
        color: const Color(0xFFFFFFFF),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w600,
      );
    }

    static semiBold20 (context) {
      return TextStyle(
        color: const Color(0xFF064061),
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w600,
      );
    }

    static  medium20(context) {
      return TextStyle(
        color: const Color(0xFFFFFFFF),
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
      );
    }

    static semiBold24(context) {
      return TextStyle(
        color: const Color(0xFF4EB7F2),
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w900,
      );
    }
  }

