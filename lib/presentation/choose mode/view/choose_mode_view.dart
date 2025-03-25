import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/core/utils/assets/app_assets.dart';
import 'package:spotify_clone/core/utils/constant/spacing.dart';
import 'package:spotify_clone/core/utils/routing/app_router.dart';
import 'package:spotify_clone/core/utils/theme/app_colors.dart';
import 'package:spotify_clone/core/utils/theme/app_styles.dart';
import 'package:spotify_clone/core/widgets/custom_app_buttom.dart';
import 'package:spotify_clone/presentation/choose%20mode/logic/cubit/theming_cubit.dart';

class ChooseModeView extends StatelessWidget {
  const ChooseModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 55),
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
                  child: SvgPicture.asset(AppAssets.logo),
                ),
                Spacer(),
                Text("Choose Mode", style: AppStyles.font18WhiteBold),
                verticalSpace(25),
                 Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.read<ThemingCubit>().updateTheme(
                                  ThemeMode.dark,
                                );
                              },
                              child: ClipOval(
                                child: Container(
                                  width: 60.w,
                                  height: 60.h,

                                  decoration: BoxDecoration(
                                    color: Color(0xff30393c).withOpacity(0.5),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    AppAssets.moon,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                            ),

                            verticalSpace(10),
                            Text(
                              "Dark Mode",
                              style: AppStyles.font16WhiteRegular,
                            ),
                          ],
                        ),
                        horizontalSpace(60),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.read<ThemingCubit>().updateTheme(
                                  ThemeMode.dark,
                                );
                              },
                              child: ClipOval(
                                child: Container(
                                  width: 60.w,
                                  height: 60.h,

                                  decoration: BoxDecoration(
                                    // ignore: deprecated_member_use
                                    color: Color(0xff30393c).withOpacity(0.5),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    AppAssets.sun,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                            ),

                            verticalSpace(10),
                            Text(
                              "Light Mode",
                              style: AppStyles.font16WhiteRegular,
                            ),
                          ],
                        ),
                      ],
                    
                ),

                verticalSpace(50),
                CustomAppButtom(
                  title: 'Continue',
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSignInOrSignUpView);
                  },
                  height: 70,
                ),

                verticalSpace(30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
