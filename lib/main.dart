import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

import 'package:facio/sign.dart';

import 'dashboard.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'FAC',
                        style: GoogleFonts.montserrat(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 3
                        ),
                      ),
                    Text(
                        'IO',
                        style: GoogleFonts.montserrat(
                            fontSize: 35,
                            color: Color(0xff29D7A0),
                            fontWeight: FontWeight.w600,
                            letterSpacing: 3
                        ),
                      ),
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child:Column(
                  children: [
                    TextField(
                      decoration: new InputDecoration(
                          hintText:"Username",
                          hintStyle: GoogleFonts.quicksand(fontSize:14,color:Colors.black,fontWeight: FontWeight.w100),
                          prefixIcon:  Icon(Icons.mail,color: Color(0xffC0C1C1),),
                          labelStyle: new TextStyle(
                              color: const Color(0xffC0C1C1)
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: new InputDecoration(
                          hintText:"Password",
                          hintStyle: GoogleFonts.quicksand(fontSize:14,color:Colors.black,fontWeight: FontWeight.w100),
                          prefixIcon:  Icon(Icons.lock_outline,color: Color(0xffC0C1C1),),
                          labelStyle: new TextStyle(
                              color: const Color(0xffC0C1C1)
                          )
                      ),
                    )
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child:Row(
                        children: [
                          Icon(FontAwesomeIcons.checkCircle,color: Color(0xff29D7A0),size:15),
                          SizedBox(width: 6,),
                          Text(
                            'Remeber me',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.black,
                              //fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Forgot Password?',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Color(0xff29D7A0),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 30, top: 10, right: 30,),
                  height:60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff29D7A0),
                    borderRadius: BorderRadius.circular(10
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff29D7A0).withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an Account',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black,
                        //fontWeight: FontWeight.w500,
                      ),
                    ),
                    FlatButton(
                      padding:EdgeInsets.zero,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        ' Sign Up here',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Color(0xff29D7A0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      );
  }
}

