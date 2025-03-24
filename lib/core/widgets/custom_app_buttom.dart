import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/theme/app_colors.dart';
import 'package:spotify_clone/core/utils/theme/app_styles.dart';

class CustomAppButtom extends StatelessWidget {
  const CustomAppButtom({super.key, required this.title, this.onPressed, this.height});

  final String title;

  final void Function()? onPressed;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize:  Size.fromHeight(height ?? 60),
      ),
      
      onPressed: onPressed, 
      
      child: Text(title,style: AppStyles.font18WhiteSemiBold,),);
  }
}