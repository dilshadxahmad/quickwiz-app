import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickwiz_app/utils/constants/my_colors.dart';
import 'package:quickwiz_app/utils/constants/my_fonts.dart';

class ThemeConfig {
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: MyColors.antiqueYellowColor,
      fontFamily: MyFonts.spaceGroteskFont,
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: MyColors.white,
      ),
      appBarTheme: AppBarTheme(
        toolbarHeight: 100.h,
        iconTheme: IconThemeData(
          size: 24.sp,
          fill: 0,
          color: MyColors.darkTunaColor,
        ),
        actionsIconTheme: const IconThemeData(
          color: MyColors.darkTunaColor,
          fill: 0.5,
        ),
        backgroundColor: MyColors.antiqueYellowColor,
        surfaceTintColor: Colors.transparent,
        // titleSpacing: 16.w,
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
          color: MyColors.darkTunaColor,
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: MyColors.darkTunaColor,
        linearTrackColor: MyColors.darkTunaColor.withOpacity(0.25),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return MyColors.darkTunaColor.withOpacity(0);
              }
              return MyColors.darkTunaColor;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return MyColors.darkTunaColor.withOpacity(0.25);
              }
              return MyColors.white;
            },
          ),
          shape: const MaterialStatePropertyAll(StadiumBorder()),
          overlayColor:
              MaterialStatePropertyAll(MyColors.white.withOpacity(0.1)),
          shadowColor:
              MaterialStatePropertyAll(MyColors.darkTunaColor.withOpacity(0.1)),
          elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return 0;
              }
              return 8.sp;
            },
          ),
          surfaceTintColor: const MaterialStatePropertyAll(Colors.transparent),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          foregroundColor:
              const MaterialStatePropertyAll(MyColors.darkTunaColor),
          shape: const MaterialStatePropertyAll(StadiumBorder()),
          overlayColor:
              MaterialStatePropertyAll(MyColors.white.withOpacity(0.1)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor:
              const MaterialStatePropertyAll(MyColors.darkTunaColor),
          shape: const MaterialStatePropertyAll(StadiumBorder()),
          side: const MaterialStatePropertyAll(
            BorderSide(color: MyColors.darkTunaColor),
          ),
          overlayColor:
              MaterialStatePropertyAll(MyColors.darkTunaColor.withOpacity(0.1)),
          elevation: const MaterialStatePropertyAll(0),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconSize: const MaterialStatePropertyAll(24),
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          foregroundColor:
              const MaterialStatePropertyAll(MyColors.darkTunaColor),
          overlayColor:
              MaterialStatePropertyAll(MyColors.darkTunaColor.withOpacity(0.1)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.transparent,
                width: 0.8.h,
              ),
              borderRadius: BorderRadius.circular(13.r),
            ),
          ),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: MyColors.lightGrey,
        thickness: 0.5.h,
      ),
      cardTheme: CardTheme(
        color: MyColors.white,
        surfaceTintColor: Colors.transparent,
        shadowColor: MyColors.lightGrey.withOpacity(0.1),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.r),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        focusElevation: 0,
      ),
      tabBarTheme: TabBarTheme(
        indicatorColor: MyColors.darkTunaColor,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: MyColors.darkTunaColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        labelColor: MyColors.white,
        unselectedLabelColor: MyColors.darkTunaColor,
        dividerColor: Colors.transparent,
        labelPadding: EdgeInsets.all(8.h),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: MyColors.darkTunaColor,
        surfaceTintColor: Colors.transparent,
        width: 348.w,
        shape: const LinearBorder(),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: MyColors.darkTunaColor.withOpacity(0.3),
        contentTextStyle: const TextStyle(color: MyColors.white),
        behavior: SnackBarBehavior.floating,
        width: 176.w,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
        filled: true,
        fillColor: MyColors.lightGrey.withOpacity(0.25),
        labelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: MyColors.lightGrey,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: MyColors.lightGrey,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: MyColors.darkTunaColor,
        selectionHandleColor: MyColors.darkTunaColor,
        selectionColor: MyColors.darkTunaColor.withOpacity(0.1),
      ),
      textTheme: TextTheme(
        // Display Styles
        displayLarge: TextStyle(
          color: MyColors.darkTunaColor,
          fontSize: 44.sp,
          fontWeight: FontWeight.normal,
        ),

        headlineMedium: TextStyle(
          fontFamily: MyFonts.urbanistFont,
          color: MyColors.white,
          fontSize: 14.sp,
        ),

        ////////////////////////////////////////////////
        displayMedium: TextStyle(
          color: MyColors.darkTunaColor,
          fontSize: 32.sp,
        ),
        displaySmall: TextStyle(
          color: MyColors.darkTunaColor,
          fontSize: 20.sp,
        ),

        // Label Styles
        labelLarge: TextStyle(
          color: MyColors.darkTunaColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: MyColors.darkTunaColor,
          fontSize: 14.sp,
          fontFamily: MyFonts.urbanistFont,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w700,
        ),

        // Body Styles
        bodyLarge: TextStyle(
          color: MyColors.darkTunaColor,
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          color: MyColors.darkTunaColor,
          fontSize: 16.sp,
        ),
        bodySmall: TextStyle(
          color: MyColors.darkTunaColor,
          fontSize: 14.sp,
          fontFamily: MyFonts.urbanistFont,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.1,
        ),

        // Headline Styles

        headlineSmall: TextStyle(
          color: MyColors.darkTunaColor,
          fontSize: 12.sp,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: MyColors.darkTunaColor,
      fontFamily: MyFonts.spaceGroteskFont,
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: MyColors.darkTunaColor,
      ),
      iconTheme: const IconThemeData(
        color: MyColors.white,
      ),
      appBarTheme: AppBarTheme(
        shape: Border(
          bottom: BorderSide(
            color: MyColors.darkTunaColor,
            width: 1.h,
          ),
        ),
        toolbarHeight: 100.h,
        iconTheme: IconThemeData(
          size: 24.sp,
          fill: 0,
          color: MyColors.white,
        ),
        actionsIconTheme: const IconThemeData(
          color: MyColors.white,
          fill: 0.5,
        ),
        backgroundColor: MyColors.darkTunaColor,
        // titleSpacing: 16.w,
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
          color: MyColors.darkTunaColor,
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: MyColors.white,
        linearTrackColor: MyColors.white.withOpacity(0.25),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(MyColors.grey),
          foregroundColor: const MaterialStatePropertyAll(MyColors.white),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          overlayColor:
              MaterialStatePropertyAll(MyColors.white.withOpacity(0.1)),
          shadowColor: MaterialStatePropertyAll(MyColors.grey.withOpacity(0.1)),
          elevation: MaterialStatePropertyAll(8.sp),
          surfaceTintColor: const MaterialStatePropertyAll(Colors.transparent),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(MyColors.grey),
          foregroundColor: const MaterialStatePropertyAll(MyColors.white),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          overlayColor:
              MaterialStatePropertyAll(MyColors.white.withOpacity(0.1)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: const MaterialStatePropertyAll(MyColors.white),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          side: const MaterialStatePropertyAll(
            BorderSide(color: MyColors.white),
          ),
          overlayColor:
              MaterialStatePropertyAll(MyColors.white.withOpacity(0.1)),
          elevation: const MaterialStatePropertyAll(0),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconSize: const MaterialStatePropertyAll(24),
          backgroundColor: const MaterialStatePropertyAll(Colors.grey),
          foregroundColor: const MaterialStatePropertyAll(MyColors.white),
          overlayColor:
              MaterialStatePropertyAll(MyColors.white.withOpacity(0.1)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.transparent,
                width: 0.8.h,
              ),
              borderRadius: BorderRadius.circular(13.r),
            ),
          ),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: MyColors.lightGrey,
        thickness: 0.5.h,
      ),
      cardTheme: CardTheme(
        color: MyColors.grey,
        surfaceTintColor: Colors.transparent,
        // shadowColor: MyColors.lightGrey.withOpacity(0.1),

        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: BorderSide(
            color: Colors.transparent,
            width: 1.h,
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: MyColors.grey,
        elevation: 0,
        splashColor: MyColors.white.withOpacity(0.1),
        focusColor: Colors.transparent,
        focusElevation: 0,
      ),
      tabBarTheme: TabBarTheme(
        indicatorColor: MyColors.darkTunaColor,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: MyColors.darkTunaColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        labelColor: MyColors.white,
        unselectedLabelColor: MyColors.darkTunaColor,
        dividerColor: Colors.transparent,
        labelPadding: EdgeInsets.all(8.h),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: MyColors.darkTunaColor,
        surfaceTintColor: Colors.transparent,
        width: 348.w,
        shape: const LinearBorder(),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: MyColors.darkTunaColor.withOpacity(0.3),
        contentTextStyle: const TextStyle(color: MyColors.white),
        behavior: SnackBarBehavior.floating,
        width: 176.w,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
        filled: true,
        fillColor: MyColors.lightGrey.withOpacity(0.25),
        labelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: MyColors.lightGrey,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: MyColors.lightGrey,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: MyColors.white,
        selectionHandleColor: MyColors.white,
        selectionColor: MyColors.white.withOpacity(0.1),
      ),
      textTheme: TextTheme(
        // Display Styles
        displayLarge: TextStyle(
          color: MyColors.white,
          fontSize: 44.sp,
        ),

        displayMedium: TextStyle(
          color: MyColors.white,
          fontSize: 32.sp,
        ),
        displaySmall: TextStyle(
          color: MyColors.white,
          fontSize: 20.sp,
        ),

        // Label Styles
        labelLarge: TextStyle(
          color: MyColors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: MyColors.white,
          fontSize: 14.sp,
          fontFamily: MyFonts.urbanistFont,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w700,
        ),

        // Body Styles
        bodyLarge: TextStyle(
          color: MyColors.white,
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          color: MyColors.white,
          fontSize: 16.sp,
        ),
        bodySmall: TextStyle(
          color: MyColors.white,
          fontSize: 14.sp,
          fontFamily: MyFonts.urbanistFont,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.1,
        ),

        // Headline Styles
        headlineMedium: TextStyle(
          color: MyColors.white,
          fontSize: 14.sp,
        ),
        headlineSmall: TextStyle(
          color: MyColors.white,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
