import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:facio/detailpage.dart';
import 'package:facio/cart.dart';

import 'filterpage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color(0xfff5f5f5),
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
            FlatButton(
              padding:EdgeInsets.zero,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
              },
              child: Padding(
                padding:EdgeInsets.only(top: 15,right: 10,),
                child: CircleAvatar(child: Icon(Icons.shopping_cart,color: Colors.black,),backgroundColor: Color(0xffe8e8e8),),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xfff5f5f5),
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
                    'Our',
                    style: GoogleFonts.quicksand(
                      fontSize:25,
                    ),
                  ),
                  Text(
                    'Products',
                    style: GoogleFonts.quicksand(
                      fontSize:25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20,top: 20),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width:MediaQuery.of(context).size.width - 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:  BorderRadius.circular(32),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.quicksand(fontSize: 15,color: Colors.grey),
                          hintText: 'Search Products',
                          prefixIcon: Icon(Icons.search,color: Colors.black,size: 20,),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                    ),
                    FlatButton(
                      padding:EdgeInsets.zero,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FilterPage()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right:1,),
                        child: Container(
                          height: 55,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child:Icon(Icons.sort,color: Colors.black,size: 20,),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:20,top: 20),
              height: 50,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange,width:1),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/wristwatch.png'),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right:10),
                          child: Text(
                            'Watches',
                            style: GoogleFonts.quicksand(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe8e8e8),width:1),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/sneakers.png'),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right:10),
                          child: Text(
                            'Sneakers',
                            style: GoogleFonts.quicksand(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe8e8e8),width:1),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/jacket.png'),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right:10),
                          child: Text(
                            'Jacket',
                            style: GoogleFonts.quicksand(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe8e8e8),width:1),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/shirt.png'),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right:10),
                          child: Text(
                            'Shirt',
                            style: GoogleFonts.quicksand(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left:20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sports',
                    style: GoogleFonts.montserrat(
                      fontSize:20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width:5),
                  Text(
                    'Shoes',
                    style: GoogleFonts.montserrat(
                      fontSize:20,
                      fontWeight: FontWeight.w200,

                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:20,top: 20),
              height: 180,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  FlatButton(
                    padding:EdgeInsets.zero,
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                    },
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Padding(
                            padding: EdgeInsets.only(left:10,top: 10),
                            child: Icon(
                              FontAwesomeIcons.heart,
                              color: Colors.grey,
                              size:17,
                            ),
                          ),
                          Center(
                            child: Image(
                              image: AssetImage('assets/s1.PNG'),
                              height: 90,
                            ),
                          ),
                          Center(
                            child: Text(
                              'NIKE AIR MAX 200',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 2,),
                          Center(
                            child: Text(
                              'Trending Now',
                              style: GoogleFonts.quicksand(
                                fontSize: 12,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "\$",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 12,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '250.00',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
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
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:10,top: 10),
                          child: Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.grey,
                            size:17,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Image(
                            image: AssetImage('assets/s2.PNG'),
                            height: 80,
                          ),
                        ),
                        Center(
                          child: Text(
                            'NIKE AIR MAX 97',
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 2,),
                        Center(
                          child: Text(
                            'Best Selling',
                            style: GoogleFonts.quicksand(
                              fontSize: 12,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "\$",
                                style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '250.00',
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
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
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:10,top: 10),
                          child: Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.grey,
                            size:17,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Image(
                            image: AssetImage('assets/s3.PNG'),
                            height: 80,
                          ),
                        ),
                        Center(
                          child: Text(
                            'NIKE AIR MAX 97',
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 2,),
                        Center(
                          child: Text(
                            'Best Selling',
                            style: GoogleFonts.quicksand(
                              fontSize: 12,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "\$",
                                style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '250.00',
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
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

                ],

              ),
            ),
            Container(
              margin: EdgeInsets.only(left:20,top:20,right: 20),
              child:Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Latest',
                          style: GoogleFonts.montserrat(
                            fontSize:20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width:5),
                        Text(
                          'Offers',
                          style: GoogleFonts.montserrat(
                            fontSize:20,
                            fontWeight: FontWeight.w200,

                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Text(
                          'See All',
                          style: GoogleFonts.montserrat(
                            fontSize:14,
                            fontWeight: FontWeight.w200,

                          ),
                        ),
                        SizedBox(width:5),
                        Icon(Icons.arrow_forward,size: 14,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:20,top: 20,bottom: 15),
              height: 160,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  FlatButton(
                    padding:EdgeInsets.zero,
                    onPressed:(){
                    },
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image(
                              image: AssetImage('assets/s5.jpg'),
                              height: 90,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:10),
                            child: Text(
                              'Song Alpha Kit',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:10),
                            child: Text(
                              'Lowest Price',
                              style: GoogleFonts.quicksand(
                                fontSize: 12,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(left:10,right: 5),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "\$",
                                        style: GoogleFonts.quicksand(
                                          fontSize: 12,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '250.00',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(Icons.favorite,color: Colors.orange,size: 20,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  FlatButton(
                    padding:EdgeInsets.zero,
                    onPressed:(){
                    },
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image(
                              image: AssetImage('assets/s6.webp'),
                              height: 90,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:10),
                            child: Text(
                              'Song Alpha Kit',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:10),
                            child: Text(
                              'Lowest Price',
                              style: GoogleFonts.quicksand(
                                fontSize: 12,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(left:10,right: 5),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "\$",
                                        style: GoogleFonts.quicksand(
                                          fontSize: 12,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '250.00',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(Icons.favorite,color: Colors.orange,size: 20,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  FlatButton(
                    padding:EdgeInsets.zero,
                    onPressed:(){
                    },
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image(
                              image: AssetImage('assets/s5.jpg'),
                              height: 90,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:10),
                            child: Text(
                              'Song Alpha Kit',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:10),
                            child: Text(
                              'Lowest Price',
                              style: GoogleFonts.quicksand(
                                fontSize: 12,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(left:10,right: 5),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "\$",
                                        style: GoogleFonts.quicksand(
                                          fontSize: 12,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '250.00',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(Icons.favorite,color: Colors.orange,size: 20,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),

                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}