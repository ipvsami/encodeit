import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {
  static const primaryColor = Color.fromARGB(255, 27, 17, 122);
  static const secondaryColor = Color.fromARGB(255, 229, 229, 250);
  static const saveToGalleryButtonColor = Color.fromARGB(255, 255, 11, 11);

  static const backgroundColor = Color.fromARGB(255, 255, 255, 255);
  static const textColor = Color.fromARGB(255, 7, 3, 43);
}

class AppTheme {
  static ThemeData get lighTheme {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.secondaryColor.withAlpha(220),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.backgroundColor,
          side: BorderSide.none,
          textStyle: TextStyle(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 57.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        displayMedium: TextStyle(
          fontSize: 45.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        displaySmall: TextStyle(
          fontSize: 36.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        headlineLarge: TextStyle(
          fontSize: 32.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 28.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 24.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        titleLarge: TextStyle(
          fontSize: 22.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        titleMedium: TextStyle(
          fontSize: 16.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        titleSmall: TextStyle(
          fontSize: 14.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 16.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        bodySmall: TextStyle(
          fontSize: 11.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        labelLarge: TextStyle(
          fontSize: 14.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        labelMedium: TextStyle(
          fontSize: 12.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
        labelSmall: TextStyle(
          fontSize: 11.sp,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        counterStyle: TextStyle(color: Colors.transparent),
        filled: true,
        fillColor: AppColors.backgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: AppColors.secondaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.secondaryColor, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.secondaryColor, width: 1.w),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      ),
    );
  }
}
