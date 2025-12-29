import 'package:flutter/material.dart';
import 'package:meenmanam/themes/colors.dart';
import 'package:meenmanam/themes/fonts.dart';

class Styles {
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static EdgeInsets marginSpace20 = const EdgeInsets.fromLTRB(20, 10, 20, 10);
  static EdgeInsets paddingSpace20 = const EdgeInsets.fromLTRB(20, 10, 20, 10);
  static EdgeInsets marginSpace50 = const EdgeInsets.fromLTRB(20, 10, 20, 50);

  //textstyle
  static TextStyle headerTextStyles = TextStyle(
    color: AppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontFamily: AppFonts.bold,
  );
  static TextStyle titleTextStyles = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: AppFonts.bold,
  );
  static TextStyle subTitleTextStyles = TextStyle(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w800,
    fontFamily: AppFonts.semiBold,
  );
  static TextStyle lightTextStyles = TextStyle(
    color: AppColors.black,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: AppFonts.regular,
  );
  static TextStyle smalTextStyles = TextStyle(
    color: AppColors.black,
    fontSize: 10,
    fontWeight: FontWeight.w200,
    fontFamily: AppFonts.light,
  );
  static TextStyle skipTextStyles = TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: AppFonts.regular,
  );
  static TextStyle greyTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: AppFonts.regular,
  );
  static TextStyle locationText = TextStyle(
    color: AppColors.primary,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: AppFonts.regular,
  );

  static TextStyle summaryText = TextStyle(
    color: AppColors.grey,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: AppFonts.regular,
  );

  static TextStyle discountTextStyles = TextStyle(
    color: AppColors.primary,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: AppFonts.bold,
  );
  static TextStyle orderTextStyles = TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: AppFonts.bold,
  );
  static TextStyle errorTextStyles = TextStyle(
    color: AppColors.primary,
    fontSize: 10,
    fontWeight: FontWeight.bold,
    fontFamily: AppFonts.bold,
  );

  //button
  static final ButtonStyle tabTextBt = TextButton.styleFrom(
    padding: const EdgeInsets.all(10),
    minimumSize: Size.zero,
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    elevation: 2,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(color: AppColors.primary.withOpacity(0.5), width: 0.4),
    ),
    backgroundColor: AppColors.white,
  );

  static ButtonStyle orderButtonStyle = ElevatedButton.styleFrom(
    elevation: 2,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(color: AppColors.white.withOpacity(0.5), width: 0.4),
    ),
    backgroundColor: AppColors.primary,
  );

  //container
  static BoxDecoration containerStyle = BoxDecoration(
    color: AppColors.primary,
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.10),
        blurRadius: 8,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static BoxDecoration cartContanerStyle = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.10),
        blurRadius: 8,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static BoxDecoration cartsummaryContanerStyle = BoxDecoration(
    color: AppColors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.10),
        blurRadius: 8,
        offset: const Offset(0, 3),
      ),
    ],
    border: Border.all(
      color: AppColors.grey,
      width: 0.3,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(16), // <-- Add this line
  );
}
