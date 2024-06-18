import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/components/primary_button.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:edtech_app/views/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login>{
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlV3uZaKcV8haGq_OggHyHLa04IYa2NzmLxEiGsOOKk8yQa9DnrihOVPW3D0YKfTghY3s&usqp=CAU",
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20,),
                const Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Login with social networks",
                  style: TextStyle(
                      color: AppTheme.inkGreyDark
                  ),
                ),
                const SizedBox(height: 10,),
                //Social media login
                Center(
                  child: Container(
                    width: 200,
                    // color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppTheme.secondaryColor
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: const FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                                size: 40,
                              ),
                            )
                        ),
                        const SizedBox(width: 10,),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppTheme.secondaryColor,
                            ),
                            // color: AppTheme.secondaryColor,
                            child: IconButton(
                              onPressed: (){},
                              icon: const FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                                size: 40,
                              ),
                            )
                        ),
                        const SizedBox(width: 10,),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppTheme.secondaryColor
                            ),
                            // color: AppTheme.secondaryColor,
                            child: IconButton(
                              onPressed: (){},
                              icon: const FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.white,
                                size: 40,
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                          color: AppTheme.inkGreyLight,
                          width: 2
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                            color: AppTheme.inkGreyDark,
                            width: 2
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: AppTheme.inkGreyDark,
                        width: 2,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscured ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.inkGreyDark
                      ),
                    ),
                ),
                PrimaryButton(btnText: "Log in", onPressed: (){}),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp()
                        )
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.inkGreyDark
                    ),
                  ),
                ),
              ],
            ),
          ),
      )
    );
  }
}