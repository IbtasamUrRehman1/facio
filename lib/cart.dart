import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
              margin: EdgeInsets.only(left:10,top: 15,),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Center(
                child: Icon(FontAwesomeIcons.bars,color: Colors.black,size: 15,),
              )
          ),
          actions: [
            Padding(
              padding:EdgeInsets.only(top: 15),
              child: CircleAvatar(backgroundImage: AssetImage('assets/user.jpeg'),radius: 30),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shopping',
                    style: GoogleFonts.quicksand(
                      fontSize:25,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cart',
                          style: GoogleFonts.quicksand(
                            fontSize:25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right:20),
                          child: Icon(
                            FontAwesomeIcons.trash,
                            size: 18,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20),
                          child: Image(
                            image: AssetImage("assets/a1.PNG"),
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(left:15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NIKE AIR MAX 200',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "\$",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 14,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '250.00',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffe8e8e8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20),
                          child: Image(
                            image: AssetImage("assets/a3.PNG"),
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(left:15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NIKE AIR MAX 200',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "\$",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 14,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '250.00',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffe8e8e8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20),
                          child: Image(
                            image: AssetImage("assets/a2.PNG"),
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(left:15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NIKE AIR MAX 200',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "\$",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 14,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '250.00',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffe8e8e8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20,right: 20,top: 20),
              child: Divider(thickness: 1,),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "3 Items",
                    style: GoogleFonts.quicksand(fontSize: 13,color: Colors.grey),
                  ),
                  Text(
                    "\$650",
                    style: GoogleFonts.quicksand(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30,top: 50),
              height:50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Next',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

