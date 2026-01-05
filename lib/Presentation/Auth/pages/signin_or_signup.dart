import 'package:flutter/material.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/app_bar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/config/assets/app_images.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/config/theme/app_colors.dart';
class SignInOrSignUp extends StatelessWidget {
  const SignInOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          BasicAppBar(),
          Align(
            alignment: Alignment.topRight,
            child:  SvgPicture.asset(
              AppVectors.upcorner,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomcorner,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.signInOrUpImage,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppVectors.logo,
                ),
                SizedBox(height: 55,),
                Text(
                  'Enjoy listening to music',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  
                ),
                SizedBox(height: 21,),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 45),
                  child: Text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider ',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: (){}, 
                          title: 'Register'
                          )
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 30)),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              )
                              ),
                            ),
                          onPressed: (){}, 
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: context.isDarkMode ? Colors.white : Colors.black
                            ),
                          ),
                          )
                        )
                    ],
                  ),
                )
              ],
            ),
            )
        ],
      ),
    );
  }
}