import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/helper/is_dark_mode.dart';
import 'package:spotify_clone/core/utils/assets/app_assets.dart';
import 'package:spotify_clone/core/utils/constant/spacing.dart';
import 'package:spotify_clone/core/utils/theme/app_styles.dart';
import 'package:spotify_clone/core/widgets/custom_app_bar.dart';
import 'package:spotify_clone/core/widgets/custom_app_buttom.dart';

class SigninOrSingupView extends StatelessWidget {
  const SigninOrSingupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           const CustomAppBar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppAssets.topPattern),

          ),
           Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppAssets.bottomPattern),

          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppAssets.authBG),

          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets.logo),
                  verticalSpace(50),
                  Text(
                    "Enjoy Lisening to favorite Music",
                    style: AppStyles.font20WhiteBold,
                  ),
                  verticalSpace(20),
                  Text(
                     'Spotify is a proprietary Swedish audio .. \n streaming and  media services provider ',
                     style: AppStyles.font13GreyMedium,
                  ),
                  verticalSpace(25),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CustomAppButtom(title: "Sign In",onPressed: (){},)),
                      horizontalSpace(20),
                      Expanded(
                        flex: 1,
                        child: TextButton(onPressed: (){},
                         child:Text("Sign Up",style: TextStyle(

                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: context.isDarkMode?Colors.white:Colors.black,

                         ),),
                         ),
                      ),
                    ],
                  ),
                  verticalSpace(60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}