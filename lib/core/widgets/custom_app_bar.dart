import 'package:flutter/material.dart';
import 'package:spotify_clone/core/helper/is_dark_mode.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title, this.hideBackArrow =false});

  final Widget ? title;
  final bool hideBackArrow ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: title ?? const Text(""),
      centerTitle: true,
      leading: hideBackArrow ? SizedBox() : IconButton(onPressed: () => Navigator.pop(context),
       icon: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: context.isDarkMode ?  Colors.white.withOpacity(0.03) : Colors.black.withOpacity(0.04),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.arrow_back_ios_new,
        size: 30,
        color: context.isDarkMode ? Colors.white : Colors.black,
        
        ))),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}