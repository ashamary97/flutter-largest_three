
import 'package:flutter/material.dart';
class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  TextEditingController getnum1=TextEditingController();
  TextEditingController getnum2=TextEditingController();
  TextEditingController getnum3=TextEditingController();
  String result="";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0,right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: getnum1,
            decoration: InputDecoration(
                hintText: "Enter first number",
                border: OutlineInputBorder()
            ),

          ),
          SizedBox(height: 10.0,),
          TextField(
            controller: getnum2,
            decoration: InputDecoration(
                hintText: "Enter second number",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10.0,),
          TextField(
            controller: getnum3,
            decoration: InputDecoration(
                hintText: "Enter third number",
                border: OutlineInputBorder()
            ),
          ),


          RaisedButton(
            color: Colors.green,
            onPressed: (){

              double num1=double.parse(getnum1.text);
              double num2=double.parse(getnum2.text);
              double num3=double.parse(getnum3.text);

              setState(() {
                if(num1>num2)
                {
                  if(num1>num3){
                    result="first number is largest";
                  }
                }
                else if(num2>num3){
                  result="Second number is largest";
                }
                else{
                  result="Third number is largest";
                }

              });


            },
            child: Text("Check"),
          ),
          Text(result,style: TextStyle(fontSize: 30.0),),



        ],
      ),
    );
  }
}
