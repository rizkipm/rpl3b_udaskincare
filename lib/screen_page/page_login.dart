import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rpl3b_udaskincare/screen_page/page_register.dart';
import 'package:rpl3b_udaskincare/screen_page/welcome_pages.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45,
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(50)
                ),
                alignment: Alignment.topLeft,
                child: Center(
                  child: IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                        => WelcomePage()
                      ));
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Color(0xff828282),),
                  ),

                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 140,),
                    Image.asset('assets/icons/logo_udaskin.png'),
                    SizedBox(height: 60,),

                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.withOpacity(0.2),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintText: 'Email'
                      ),
                    ),
                    SizedBox(height: 15,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          hintText: 'Password',

                      ),
                    ),
                    SizedBox(height: 40,),
                    MaterialButton(onPressed: (){},
                      padding: EdgeInsets.symmetric(horizontal: 175, vertical: 15),
                      color: Color(0xff333333),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Text('Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xffF2F2F2)
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text('-------------------------------------- or -----------------------------',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(height: 25,),
                    MaterialButton(onPressed: (){},
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/logo_google.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: 20,),
                          Text('Sign in with Google',
                            style: TextStyle(
                              color: Color(0xff828282),
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ) ,
                    SizedBox(height: 65,),
                    RichText(
                      text: TextSpan(
                        text: "Don't have an account?  ",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                        children:[
                          TextSpan(
                            text: "Sign Up",
                            recognizer: TapGestureRecognizer()
                              ..onTap =() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)
                                  =>PageRegister()
                                ));
                              },
                            style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold
                            )
                          )
                        ]
                      ),
                    ),
                  ],
                ),
              )


            ],
          ),
        ),
      ),

    );
  }
}
