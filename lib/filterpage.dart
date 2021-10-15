import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues _currentRangeValues = const RangeValues(0, 100);
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child:Icon(Icons.arrow_back_ios,color: Colors.white,size: 15,),
                      color: Colors.black,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "Filter By",
                      style: GoogleFonts.varelaRound(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:50,top: 20),
                child: Text(
                  "Price Range",
                  style: GoogleFonts.raleway(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:30),
                child: RangeSlider(
                  values: _currentRangeValues,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:50),
                child: Text(
                  "Color",
                  style: GoogleFonts.raleway(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              CheckBox(),


              // ignore: deprecated_member_use
              FlatButton(
                padding:EdgeInsets.only(left: 50),
                onPressed: (){
                  showDialog(
                    context: context,
                    child: AlertDialog(
                      title: const Text('Pick a color!'),
                      content: SingleChildScrollView(
                        child: ColorPicker(
                          pickerColor: pickerColor,
                          onColorChanged: changeColor,
                          showLabel: true,
                          pickerAreaHeightPercent: 0.8,
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: const Text('Got it'),
                          onPressed: () {
                            setState(() => currentColor = pickerColor);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 56,
                  width: MediaQuery.of(context).size.width - 75,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "Colors Picker",
                      style: GoogleFonts.quicksand(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,),
                      ),
                      child: Center(
                        child: Text(
                          "Reset",
                          style: GoogleFonts.quicksand(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 25,),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          "Apply",
                          style: GoogleFonts.quicksand(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

}



class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50,right: 15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('High to Low',
                  style: GoogleFonts.raleway(fontSize: 16),),
                Checkbox(
                  value: this.valuesecond,
                  onChanged: (bool value) {
                    setState(() {
                      this.valuesecond = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Low to High',
                  style: GoogleFonts.raleway(fontSize: 16),),
                Checkbox(
                  value: this.valuesecond,
                  onChanged: (bool value) {
                    setState(() {
                      this.valuesecond = value;
                    });
                  },
                ),
              ],
            ),
          ],
        )
    );
  }
}