import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/assets/colors/theme_colors.dart';
import 'package:flutter_dev_posts/assets/themes/fonts.dart';

ThemeData getThemeData(BuildContext context) => ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      secondaryHeaderColor: secondaryColor,
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      splashColor: primaryColor,
      iconTheme: const IconThemeData(color: iconColor),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          fontFamily: defaultFont,
        ),
        headline2: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          fontFamily: defaultFont,
        ),
        headline3: TextStyle(
          fontSize: 16.0,
          fontFamily: defaultFont,
          fontWeight: FontWeight.w400,
        ),
        headline4: TextStyle(
          fontSize: 15.0,
          fontFamily: defaultFont,
          fontWeight: FontWeight.w400,
        ),
        headline5: TextStyle(
          fontSize: 12.0,
          fontFamily: defaultFont,
          fontWeight: FontWeight.w500,
        ),
        headline6: TextStyle(
          fontSize: 12.0,
          fontFamily: defaultFont,
          fontWeight: FontWeight.w400,
        ),
      ).apply(
        bodyColor: textColor,
        displayColor: textColor,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: headerColor,
        iconTheme: IconThemeData(color: iconColor),
        elevation: 0.0,
        shadowColor: dividerColor,
        shape: Border(
          bottom: BorderSide(
            color: dividerColor,
            width: 2.0,
          ),
        ),
        titleTextStyle: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          fontFamily: defaultFont,
          color: textColor,
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(cursorColor: textColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          shadowColor: primaryColor,
          textStyle: const TextStyle(
            color: textColor,
            fontFamily: defaultFont,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            fontFamily: defaultFont,
            fontSize: 15.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          primary: primaryColor,
        ),
      ),
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: secondaryColor,
      ),
      dialogBackgroundColor: backgroundColor,
      dialogTheme: const DialogTheme(
        alignment: Alignment.center,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        titleTextStyle: TextStyle(
          fontFamily: defaultFont,
          fontSize: 17.0,
        ),
        contentTextStyle: TextStyle(
          fontFamily: defaultFont,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      popupMenuTheme: const PopupMenuThemeData(
        color: secondaryColor,
        elevation: 7.0,
        textStyle: TextStyle(
          fontSize: 15.0,
          fontFamily: defaultFont,
        ),
      ),
      cardTheme: CardTheme(
        color: secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: Colors.grey[700],
        contentTextStyle: const TextStyle(
          fontSize: 15.0,
          fontFamily: defaultFont,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
