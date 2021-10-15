import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';



class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
              margin: EdgeInsets.only(left:15,top: 15,),
              height: 70,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width:1),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Padding(
                padding: EdgeInsets.only(left:5),
                child: Center(
                  child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,),
                ),
              )
          ),
          actions: [
            Container(
                margin: EdgeInsets.only(right:15,top: 15,),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Center(
                  child: Icon(Icons.favorite,color: Colors.orange,size: 18,),
                )
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  )
              ),
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/s4.PNG"),
                    height: 180,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.orange,width: 1)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage("assets/s4.PNG"),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey,width: 1)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage("assets/s4.PNG"),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey,width: 1)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage("assets/s4.PNG"),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey,width: 1)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage("assets/s4.PNG"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 405,
              width: double.infinity,
              decoration: BoxDecoration(
                  color:Color(0xffF7F7F7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 10,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xffDDDDDD),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30,right: 20,top:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'NIKE AIR MAX 200',
                          style: GoogleFonts.quicksand(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Container(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                  Container(
                    margin: EdgeInsets.only(left: 30,right: 20,top:8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Avaliable Sizes',
                          style: GoogleFonts.quicksand(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Container(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star,size: 15,color: Colors.orange,),
                              Icon(Icons.star,size: 15,color: Colors.orange,),
                              Icon(Icons.star,size: 15,color: Colors.orange,),
                              Icon(Icons.star,size: 15,color: Colors.grey,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:20,top: 15),
                    height: 40,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: AlwaysScrollableScrollPhysics(),
                      children: [
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'US 6',
                              style: GoogleFonts.quicksand(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          child: Center(
                            child: Text(
                              'US 6',
                              style: GoogleFonts.quicksand(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'US 6',
                              style: GoogleFonts.quicksand(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'US 6',
                              style: GoogleFonts.quicksand(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:EdgeInsets.only(left:30,top:8),
                          child: Text(
                            'Color',
                            style: GoogleFonts.quicksand(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60,top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(backgroundColor: Color(0xffDDDDDD),radius:18,child: CircleAvatar(backgroundColor: Colors.red,radius: 15,)),
                              SizedBox(width: 5,),
                              CircleAvatar(backgroundColor: Color(0xffDDDDDD),radius:18,child: CircleAvatar(backgroundColor: Colors.blue,radius: 15,)),
                              SizedBox(width: 5,),
                              CircleAvatar(backgroundColor: Color(0xffDDDDDD),radius:18,child: CircleAvatar(backgroundColor: Colors.black,radius: 15,)),
                              SizedBox(width: 5,),
                              CircleAvatar(backgroundColor: Color(0xffDDDDDD),radius:18,child: CircleAvatar(backgroundColor: Colors.orange,radius: 15,)),
                              SizedBox(width: 5,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin:EdgeInsets.only(left:30,top:8),
                    child: Text(
                      'Description',
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(left:30,top:5,right: 16),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut ',
                      style: GoogleFonts.quicksand(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30,top: 5),
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
                        'Add to Cart',
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
          ],
        ),
      ),
    );
  }
}


