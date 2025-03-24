import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/theme/app_colors.dart';

class AppTheming{

  static final lightTheme = ThemeData(


    primaryColor:  AppColors.primary,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
          ),
      ),
    ),

  );


   static final darkTheme = ThemeData(


    primaryColor:  AppColors.primary,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
          ),
      ),
    ),

  );
}