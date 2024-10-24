import 'package:d365_integration/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class D365Theme {
  static getThemeData(ThemeMode themeMode) {
    return ThemeData(
      scaffoldBackgroundColor: bgWhite,
      appBarTheme: AppBarTheme(
        toolbarHeight: 50.r,
        centerTitle: false,
        backgroundColor: bgWhite,
        surfaceTintColor: bgWhite,
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.normal, fontSize: 24, color: textColor),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: bgColor.withAlpha(26),
        primary: bgColor,
        primaryContainer: Colors.white,
      ),
      useMaterial3: true,
      drawerTheme: const DrawerThemeData(
        backgroundColor: bgWhite,
        surfaceTintColor: bgWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
      ),
      //TabBar
      //ListTile
      listTileTheme: ListTileThemeData(
          tileColor: bgWhite,
          shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10.r)))),
      cardTheme: CardTheme(
          elevation: 3,
          color: bgWhite,
          shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10.r)))),
      //FLOATING ACTION BUTTON
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: bgColor,
      ),
      //PRIMARY BUTTON
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(12.r),
          minimumSize: const Size(220, 50),
          foregroundColor: bgWhite,
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000.r),
          ),
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          disabledBackgroundColor: gray,
          disabledForegroundColor: bgWhite,
        ),
      ),
      //TEXTBUTTON
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: secondary,
        textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.underline),
      )),
      //TERTIARY
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(12.r),
          minimumSize: const Size(50, 42),
          side: const BorderSide(color: bgColor),
          backgroundColor: bgWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000.r),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          disabledBackgroundColor: gray,
          disabledForegroundColor: bgWhite,
        ),
      ),
      //TEXTFORMFIELD
      inputDecorationTheme: InputDecorationTheme(
        hoverColor: bgWhite,
        contentPadding: EdgeInsets.all(16.r),
        errorMaxLines: 3,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: bgColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(1000.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(1000.r)),
          borderSide: const BorderSide(
            color: textDanger,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(1000.r),
          ),
          borderSide: const BorderSide(
            color: textDanger,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: bgColor.withAlpha(100), width: 1.5),
          borderRadius: BorderRadius.circular(1000.r),
        ),
        labelStyle: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        hintStyle: const TextStyle(
          color: bgColor,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: bgWhite,
        surfaceTintColor: bgWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        modalElevation: 5,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        backgroundColor: bgWhite,
        unselectedIconTheme: IconThemeData(
          color: menuColor.withAlpha(125),
        ),
        unselectedLabelStyle: const TextStyle(fontSize: 12, color: menuColor),
        selectedLabelStyle: const TextStyle(
            fontSize: 12, color: bgColor, fontWeight: FontWeight.w600),
        elevation: 25,
      ),
      dialogTheme: const DialogTheme(
        alignment: Alignment.center,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: Size(50.r, 60.r),
          foregroundColor: bgWhite,
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
          disabledBackgroundColor: gray,
          disabledForegroundColor: bgWhite,
        ),
      ),
      textTheme: TextTheme(
        //Heading 1
        headlineLarge: const TextStyle(
          color: bgColor,
          fontWeight: FontWeight.w800,
          fontSize: 40,
        ),
        //Heading 2
        headlineMedium: const TextStyle(
          color: bgColor,
          fontWeight: FontWeight.w800,
          fontSize: 24,
        ),
        //Heading 3
        headlineSmall: const TextStyle(
          color: bgColor,
          fontWeight: FontWeight.w800,
          fontSize: 20,
        ),
        //Title
        titleSmall: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          height: 1.2.r,
        ),
        //Title
        titleMedium: const TextStyle(
          color: bgColor,
          fontWeight: FontWeight.w600,
          fontSize: 28,
        ),

        //Body
        bodyLarge: const TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: -0.4),
        bodyMedium: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
        //Display
        bodySmall: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.normal,
          fontSize: 10,
        ),
      ),
    );
  }
}
