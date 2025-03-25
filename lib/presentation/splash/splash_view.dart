import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/core/utils/routing/app_router.dart';
import 'package:spotify_clone/core/utils/assets/app_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}




class _SplashViewState extends State<SplashView> {


  @override
  void initState() {
   
    super.initState();
    navigatToGetStartedView();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  SvgPicture.asset(AppAssets.logo),
      ),
    );
  }



  Future<void> navigatToGetStartedView() async {
    await Future.delayed(const Duration(seconds:3));

   GoRouter.of(context).pushReplacement(AppRouter.kGetStartedView);
   // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const GetSrartedView()));
    
  }
}