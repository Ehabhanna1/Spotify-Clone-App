import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/core/utils/assets/app_assets.dart';
import 'package:spotify_clone/core/utils/constant/spacing.dart';
import 'package:spotify_clone/core/utils/routing/app_router.dart';
import 'package:spotify_clone/core/utils/theme/app_styles.dart';
import 'package:spotify_clone/core/widgets/custom_app_buttom.dart';


class GetSrartedView extends StatelessWidget {
  const GetSrartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
           
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppAssets.introBG,
               
                
                ),
              ),
            ),
            
          ),
          Container(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
             padding: EdgeInsets.symmetric(horizontal: 30,vertical: 60),
            child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppAssets.logo)),
                  Spacer(),
                  Text("Enjoy Lisening to favorite Music",style: AppStyles.font20Bold.copyWith(color: Colors.white),),
                  verticalSpace(25),
                  Text('Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod tempor \n incididunt ut labore et dolore magna aliqua.',
                  style: AppStyles.font13Medium.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                  ),
            
                  verticalSpace(25),
                  CustomAppButtom(
                    height: 70,
                    title: 'Get Started',onPressed: (){

                    GoRouter.of(context).push(AppRouter.kChooseModeView);
                  },),
            
                  verticalSpace(30)
            
            
                ],
              ),
          ),
         
        ],
      ),
    );
  }
}