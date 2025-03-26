import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/helper/is_dark_mode.dart';
import 'package:spotify_clone/core/utils/assets/app_assets.dart';
import 'package:spotify_clone/core/utils/constant/spacing.dart';
import 'package:spotify_clone/core/utils/theme/app_colors.dart';
import 'package:spotify_clone/core/utils/theme/app_styles.dart';
import 'package:spotify_clone/core/widgets/custom_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>with SingleTickerProviderStateMixin {


  late  TabController _tabController;
   @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }


 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:CustomAppBar(
        title: SvgPicture.asset(AppAssets.logo, height: 50,width: 50,),
        hideBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            

            _homeTopCard(),
            verticalSpace(20),
            _homeTabs(),


          ],
        ),
      ),
    );
  }

  Widget _homeTopCard (){
    return  SizedBox(
      height: 135.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 105.h,
            width: double.infinity,
             padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30.r),
              
              
              
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("New Album \n Happier Than Ever\n Billie Eilish  ", style: AppStyles.font18Bold.copyWith(color: Colors.white),),
              ],
            ),
          ),
          Positioned(
            right: 16,
            bottom: 0,
            
            child: Image.asset(AppAssets.homeArtist,height: 135.h,),
            ),
       
            
            
            
      ],
      
      ),
    );
  }

  Widget _homeTabs(){
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      labelColor: context.isDarkMode ? Colors.white : Colors.black,
      indicatorColor: AppColors.primary,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16
      ),
      tabs:[
        Text("News", style: AppStyles.font16SemiBold,),
        Text("Podcasts", style: AppStyles.font16Regular,),
        Text("Videos", style: AppStyles.font16Regular,),
        Text("Artists", style: AppStyles.font16Regular,),
        Text("Spotify Originals", style: AppStyles.font16Regular,),
      ],
      );
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}