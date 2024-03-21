import 'package:flutter/material.dart';
import 'package:rpl3b_udaskincare/screen_page/page_login.dart';
import 'package:rpl3b_udaskincare/screen_page/page_register.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/gambar/background.jpeg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2)
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 200,),
                    Image(image: AssetImage('assets/icons/logo_udaskin.png',
                    ),height: 55,)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)
                          =>PageLogin()
                        ), (route) => false);
                      },
                      child: Container(
                        width: 320,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text('Sign In',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff333333)
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)
                        =>PageRegister()
                        ), (route) => false);

                      },
                      child: Container(
                        width: 320,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffEFFFF2),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text('Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff1A1317)
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 30,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
