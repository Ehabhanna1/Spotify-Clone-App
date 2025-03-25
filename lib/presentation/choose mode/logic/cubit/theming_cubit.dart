import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';



class ThemingCubit extends HydratedCubit<ThemeMode> {
  ThemingCubit() : super(ThemeMode.system);
  

  void updateTheme(ThemeMode themeMode) => emit(themeMode);
  
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
   return ThemeMode.values[json['theme'] as int];
  }
  
  @override
  Map<String, dynamic>? toJson(ThemeMode mode) {
    return {'theme': mode.index};
  }
  
  
 
 
}
