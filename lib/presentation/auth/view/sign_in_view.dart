import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/core/utils/assets/app_assets.dart';
import 'package:spotify_clone/core/utils/constant/spacing.dart';
import 'package:spotify_clone/core/utils/routing/app_router.dart';
import 'package:spotify_clone/core/utils/theme/app_colors.dart';
import 'package:spotify_clone/core/utils/theme/app_styles.dart';
import 'package:spotify_clone/core/widgets/custom_app_bar.dart';
import 'package:spotify_clone/core/widgets/custom_app_buttom.dart';
import 'package:spotify_clone/data/models/auth/sign_in_user_request.dart';
import 'package:spotify_clone/domain/use_case/auth/sign_in_use_case.dart';
import 'package:spotify_clone/service_locator.dart';

class SignInView extends StatelessWidget {
   SignInView({super.key});


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: _signInText(context),
      appBar: CustomAppBar(
        title: SvgPicture.asset(AppAssets.logo, height: 50,width: 50,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
        child: SingleChildScrollView(
          child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _registerText(),
              verticalSpace(30),
              _emailTextField(context),
             
              verticalSpace(20),
              _passwordTextField(context),
              verticalSpace(20),
              CustomAppButtom(
                height: 80,
                title: 'Sign In' ,
                onPressed: () async {

                  var result = await serviceLocator<SignInUseCase>().call(
                    params: SignInUserRequest(
                      email: _emailController.text.toString(),
                      password: _passwordController.text.toString(),
                    ),
                  );

                  result.fold(
                    (left){

                      var snackBar = SnackBar(content: Text(left,
                      style: AppStyles.font16SemiBold.copyWith(color: Colors.white),),
                       backgroundColor: Colors.red,behavior: SnackBarBehavior.floating,);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar,);

                    },
                    (right){
                      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
                    });

                
              },),

              verticalSpace(50),


             
          
            ],
          
          ),
        ),
      ),
    );
  }


Widget _registerText(){
  return  Text("Sign In", textAlign: TextAlign.center , style: AppStyles.font25Bold,);
}



Widget _emailTextField(BuildContext context){
  return  TextField(
    controller: _emailController,
    decoration: InputDecoration(
      hintText: "Email ",
      //hintStyle: AppStyles.font16Regular,
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );


}


 Widget _passwordTextField(BuildContext context){
  return  TextField(
    controller: _passwordController,
    decoration: InputDecoration(
      
      hintText: "Password",
      //hintStyle: AppStyles.font16Regular,
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );  

}

Widget _signInText(BuildContext context){
  return  Padding(
    padding: const EdgeInsets.symmetric(vertical: 45),
    child: Row(
    
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
        Text("Don't have an account?", style: AppStyles.font16Regular,),
        TextButton(onPressed: () {
          GoRouter.of(context).push(AppRouter.kSignUpView);
        }, child: Text("Sign Up", style: AppStyles.font18Bold.copyWith(color: AppColors.primary,),),),
    
      ],
    ),
  );


}


}

