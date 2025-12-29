import 'package:flutter/material.dart';
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
                    color: Color(0xfff2f2f2)
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
                )
              ],
            ),
            )
        ],
      ),
    );
  }
}