import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movieticketbookingapp/pages/signup_screen.dart';
import 'package:movieticketbookingapp/utils/mytheme.dart';

import 'package:movieticketbookingapp/utils/social_button.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen ({ Key? key}) :super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor:Colors.transparent ));
    return Scaffold(
      backgroundColor: MyTheme.splash,
      body: SafeArea(
        child: Container(
          height: _size.height,
          width: _size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/splash_icon.svg"),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "Welcome Guys,",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                ),
                Text(
                  "Login to book your seat",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.7),
                    )
                ),
               const SizedBox(
                 height: 20,
               ),
               Container(
                 margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                 padding: const EdgeInsets.all(19),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 width: _size.width,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const Text(
                         "Login to your account",
                         style: TextStyle(
                           fontSize: 15,
                           color: MyTheme.splash,
                           fontWeight: FontWeight.w600,
                         ),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(top: 15),
                       child: TextFormField(
                           style: const TextStyle(color: Colors.black),
                           decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide.none,
                           ),
                           hintText: "Username",
                           hintStyle: const TextStyle(color: Colors.black),
                           fillColor: MyTheme.greyColor,
                           filled: true,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: TextFormField(
                           obscureText: true,
                           style: const TextStyle(color: Colors.black),
                           decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide.none,
                           ),
                           hintText: "Password",
                           hintStyle: const TextStyle(color: Colors.black),
                           fillColor: MyTheme.greyColor,
                           filled: true,
                         ),
                       ),
                     ),
                     Align(
                       alignment: Alignment.centerRight,
                       child: TextButton(
                           onPressed: () {},
                         child: const Text(
                           "Forgot Password",
                           style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w700),
                         ),
                       ),
                     ),
                     ElevatedButton(
                         onPressed: () {},
                         style: ElevatedButton.styleFrom(
                           primary: MyTheme.splash,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(5),
                           )
                         ),
                         child: const Center(
                           child: Padding(
                             padding: EdgeInsets.all(15),
                             child: Text("LOGIN", style: TextStyle(fontSize: 16),
                             ),
                           ),
                         )
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 15),
                       child: Row(
                         children: [
                           Expanded(
                             child: Divider(
                               thickness: 0.5,
                               color: Colors.black.withOpacity(0.3),
                             ),
                           ),
                             const Padding(
                               padding: EdgeInsets.symmetric(horizontal: 5),
                               child: Text("Or", style: TextStyle(color: Color(0xFFC1C1C1),)),
                             ),
                             Expanded(
                               child: Divider(
                                   thickness: 0.5,
                                   color: Colors.black.withOpacity(0.3)
                               ),
                             ),
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 15, bottom: 15),
                       child: SocialLoginButton(onFbClick: () {},
                         onGoogleClick: () {},
                       ),
                     )
                   ],
                 ),
               ),
                  RichText(text: TextSpan(
                    children: [
                      const TextSpan(text: "Don't have an account ?"),
                      TextSpan(text: " Signup",
                        style: const TextStyle(
                          decoration: TextDecoration.underline, fontWeight: FontWeight.w700,),
                        recognizer: TapGestureRecognizer()..onTap = () { Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpScreen(),));
                        },
                      ),
                      const TextSpan(text: " here",
                        style: TextStyle(fontWeight: FontWeight.w700,),
                      )

                    ]
                  )
                  )
            ],
          ),
        ),
      ),
    );
  }
}