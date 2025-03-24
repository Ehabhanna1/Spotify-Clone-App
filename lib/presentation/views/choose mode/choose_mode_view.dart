import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/core/utils/assets/app_assets.dart';
import 'package:spotify_clone/core/utils/constant/spacing.dart';
import 'package:spotify_clone/core/utils/theme/app_styles.dart';
import 'package:spotify_clone/core/widgets/custom_app_buttom.dart';

class ChooseModeView extends StatelessWidget {
  const ChooseModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 55),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppAssets.chooseMode),
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppAssets.logo)),
                  Spacer(),
                  Text("Choose Mode",style: AppStyles.font18WhiteBold,),
                  verticalSpace(25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                width: 60.w,
                                height: 60.h,
                                
                                decoration: BoxDecoration(
                                  color: Color(0xff30393c).withOpacity(0.5),
                                  shape: BoxShape.circle
                                  
                                ),
                                child: SvgPicture.asset(AppAssets.moon,fit: BoxFit.none,),
                              ),
                            ),
                          ),

                          verticalSpace(10),
                          Text("Dark Mode",style: AppStyles.font16GreyRegular,)
                        ],
                      ),
                      horizontalSpace(60),
                      Column(
                        children: [
                          ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                width: 60.w,
                                height: 60.h,
                                
                                decoration: BoxDecoration(
                                  color: Color(0xff30393c).withOpacity(0.5),
                                  shape: BoxShape.circle
                                  
                                ),
                                child: SvgPicture.asset(AppAssets.sun,fit: BoxFit.none,),
                              ),
                            ),
                          ),

                          verticalSpace(10),
                          Text("Light Mode",style: AppStyles.font16GreyRegular,)
                        ],
                      ),



                    ],
                  ),

                  verticalSpace(50),
                  CustomAppButtom(title: 'Continue',onPressed: (){},),

                  verticalSpace(30),
                ],
              ),
          ),
           
         
        ],
      ),
    );
  }
}