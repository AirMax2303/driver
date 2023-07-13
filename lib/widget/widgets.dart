import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppColor {
  static const Color stdColor = Color(0xFF7067F2);
  static const Color backgroundColor = Color(0xFFF7F7F7);
  static const Color greenColor = Color(0xFFE2FFE3);
}

abstract final class AppTextStyle {
  static TextStyle textStyle16 = const TextStyle(
      color: AppColor.stdColor, fontSize: 16, fontWeight: FontWeight.w400);
  static TextStyle textStyle18 = const TextStyle(
      color: AppColor.stdColor, fontSize: 18, fontWeight: FontWeight.w600);
  static TextStyle textStyle20 = const TextStyle(
      color: AppColor.stdColor, fontSize: 20, fontWeight: FontWeight.w600);
  static TextStyle blackTextStyle12 = const TextStyle(
      color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600);
  static TextStyle blackTextStyle16 = const TextStyle(
      color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400);
  static TextStyle blackTextStyle18 = const TextStyle(
      color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400);
  static TextStyle blackTextStyle20 = const TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700);
  static TextStyle blackTextStyle29 = const TextStyle(
      color: Colors.black, fontSize: 29, fontWeight: FontWeight.w700);
  static TextStyle whiteTextStyle18 = const TextStyle(
      color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600);
}

abstract final class AppSixeBox {
  static SizedBox size10 = const SizedBox(height: 10,);
  static SizedBox size20 = const SizedBox(height: 20,);
}

abstract final class AppText {

  static Text text(String? data) {
    return Text(data!, style: GoogleFonts.nunito());
  }
  static text16 (String data ) {
    return Text(data, style: GoogleFonts.nunito(textStyle: AppTextStyle.textStyle16,));
  }
  static text18 (String data) {
    return Text(data, style: GoogleFonts.nunito(textStyle: AppTextStyle.textStyle18,));
  }
  static blackText12 (String data) {
    return Text(data, style: GoogleFonts.nunito(textStyle: AppTextStyle.blackTextStyle12,));
  }
  static blackText16 (String data) {
    return Text(data, style: GoogleFonts.nunito(textStyle: AppTextStyle.blackTextStyle16,));
  }
  static blackText18 (String data) {
    return Text(data, style: GoogleFonts.nunito(textStyle: AppTextStyle.blackTextStyle18,));
  }
  static blackText20 (String data) {
    return Text(data, style: GoogleFonts.nunito(textStyle: AppTextStyle.blackTextStyle20,));
  }
  static blackText29 (String data) {
    return Text(data, style: GoogleFonts.nunito(textStyle: AppTextStyle.blackTextStyle29,));
  }
  static whiteText18 (String data) {
    return Text(data, style: GoogleFonts.nunito(textStyle: AppTextStyle.whiteTextStyle18,));
  }
}

abstract final class AppButtonStyle {
  static ButtonStyle stdButtonStyle({Color? color}) {
    return TextButton.styleFrom(
      elevation: 8,
      backgroundColor: color ?? AppColor.stdColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // <-- Radius
      ),
    );
  }

  static ButtonStyle whiteButtonStyle({Color? color}) {
    return TextButton.styleFrom(
      elevation: 8,
      backgroundColor: color ?? Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // <-- Radius
      ),
    );
  }
}

abstract final class AppButton {
  static double defHeight = 60;

  static Widget button16(String data, {required VoidCallback? onPressed,}) {
    return TextButton(
        onPressed: onPressed,
        child: AppText.text16(data));
  }

  static Widget filledButton(String data,
      {Key? key, required VoidCallback? onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: defHeight,
      child: FilledButton(
        style: AppButtonStyle.stdButtonStyle(),
        onPressed: onPressed,
        child: AppText.whiteText18(data),
      ),
    );
  }

  static Widget whiteButton(String data,
      {Key? key, required VoidCallback? onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: defHeight,
      child: FilledButton(
        style: AppButtonStyle.whiteButtonStyle(),
        onPressed: onPressed,
        child: AppText.blackText18(data),
      ),
    );
  }
}



