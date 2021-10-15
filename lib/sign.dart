import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:facio/main.dart';



class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: FlatButton(
            padding:EdgeInsets.zero,
            onPressed: (){
              Navigator.pop(context);
            },
            child: Container(
              margin:EdgeInsets.only(left: 7),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios,size: 15,color: Colors.black,),
                  Text('Back',style: GoogleFonts.quicksand(fontSize:13,color: Colors.black),),
                ],
              ),
            ),
          ),
        ),
      ),
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
                          // letterSpacing: 3
                        ),
                      ),
                      Text(
                        'IO',
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          color: Color(0xff29D7A0),
                          fontWeight: FontWeight.w600,
                          //letterSpacing: 3
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
                            prefixIcon:  Icon(Icons.person,color: Color(0xffC0C1C1),),
                            hintText:"Username",
                            hintStyle: GoogleFonts.quicksand(fontSize:14,color:Colors.black,fontWeight: FontWeight.w100),
                            labelStyle: new TextStyle(
                                color: const Color(0xffC0C1C1)
                            )
                        ),
                      ),
                      SizedBox(height: 20,),

                      TextField(
                        decoration: new InputDecoration(
                            prefixIcon:  Icon(Icons.phone,color: Color(0xffC0C1C1),),
                            hintText:"Contact",
                            hintStyle: GoogleFonts.quicksand(fontSize:14,color:Colors.black,fontWeight: FontWeight.w100),
                            labelStyle: new TextStyle(
                                color: const Color(0xffC0C1C1)
                            )
                        ),
                      ),
                      SizedBox(height: 20,),

                      TextField(
                        decoration: new InputDecoration(
                            hintText:"Email",
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
                margin: EdgeInsets.only(left: 20,top: 30),
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
              SizedBox(height: 20,),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyMail()));
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
                      'Register',
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
                      'Already have an Account',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black,
                        //fontWeight: FontWeight.w500,
                      ),
                    ),
                    FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Text(
                        ' Login here',
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


class VerifyMail extends StatefulWidget {
  @override
  _VerifyMailState createState() => _VerifyMailState();
}

class _VerifyMailState extends State<VerifyMail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: FlatButton(
            padding:EdgeInsets.zero,
            onPressed: (){
              Navigator.pop(context);
            },
            child: Container(
              margin:EdgeInsets.only(left: 7),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios,size: 15,color: Colors.black,),
                  Text('Back',style: GoogleFonts.quicksand(fontSize:13,color: Colors.black),),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/logo.PNG',),
                  height: 180,
                ),
              ),
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
                          // letterSpacing: 3
                        ),
                      ),
                      Text(
                        'IO',
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          color: Color(0xff29D7A0),
                          fontWeight: FontWeight.w600,
                          //letterSpacing: 3
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left:20,right:20),
                child: Text(
                  'Hey,Please use the link below to verify your email and star useing FACIO',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.black,
                    //fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20,),
              Container(
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
                    'Verify Email',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
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
                      'Question',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black,
                        //fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Email us at',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black,
                        //fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      ' Contact@facio.con',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Color(0xff29D7A0),
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

