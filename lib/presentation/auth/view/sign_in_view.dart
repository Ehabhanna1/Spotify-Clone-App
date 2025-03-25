import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/core/utils/assets/app_assets.dart';
import 'package:spotify_clone/core/widgets/custom_app_bar.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: SvgPicture.asset(AppAssets.logo, height: 50,width: 50,),
      ),
      body: Column(
        children: [
          TextField()
        ],
      ),
    );
  }
}