import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabaty/talabaty/talabaty.dart';

class auth extends StatefulWidget {

  @override
  State<auth> createState() => _authState();
}

class _authState extends State<auth> {
  String name = '';
  String phoneNumber = '';
  String code = '';
  bool haveCode = false;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Directionality(textDirection: TextDirection.rtl,
          child: Padding(padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // logo
                Padding(padding: EdgeInsets.symmetric(vertical: 30),
                  child: Center(child:
                  Image.network("https://d3jh33bzyw1wep.cloudfront.net/s3/W1siZiIsIjIwMTkvMTAvMDgvMDYvNDgvNTUvMjc5L1RhbGFiYXRleS5KUEciXSxbInAiLCJ0aHVtYiIsIjQwMHgzMDBcdTAwM2UiXV0", height: 200,)
                    ,),
                ),
                // input name
                Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Center(child: Stack(
                    children: [
                      TextFormField(
                        initialValue: name,
                        enableInteractiveSelection: false,
                        onChanged: (e){
                          setState(() {
                            name = e;
                          });
                        },
                        decoration: InputDecoration(
                          focusColor: Colors.red,
                          hintText: "الاسم",
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                        ),
                        cursorColor: Colors.red,
                        style: TextStyle(fontFamily: 'noto'),
                      ),
                      Positioned(top: 25, left: 15,
                          child: Row(
                            children: [
                              Text("15", style: TextStyle(color: Colors.red),),
                              Text("/", style: TextStyle(color: Colors.red),),
                              Text("${name.length}", style: TextStyle(color: Colors.red),)
                            ],
                          )
                      )
                    ],
                  ),),
                ),
                // input phone number
                Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Center(child: Stack(
                    children: [
                      TextFormField(
                        initialValue: phoneNumber,
                        onChanged: (e){
                          setState(() {
                            phoneNumber = e;
                          });
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusColor: Colors.red,
                          hintText: "رقم الهاتف",
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,

                        ),
                        cursorColor: Colors.red,
                        style: TextStyle(fontFamily: 'noto'),
                      ),
                      Positioned(top: 25, left: 15,
                          child: Row(
                            children: [
                              Text("11", style: TextStyle(color: Colors.red),),
                              Text("/", style: TextStyle(color: Colors.red),),
                              Text("${phoneNumber.length}", style: TextStyle(color: Colors.red),)
                            ],
                          )
                      )
                    ],
                  ),),
                ),
                // check have a code ?
                Padding(padding: EdgeInsets.only(top:20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            haveCode = !haveCode;
                          });
                        },
                        child: Text("اذا كان لديك رمز مشاركة، اضغط هنا", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red, fontFamily: 'noto'),),
                      ),
                      haveCode ?
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.arrow_drop_down, color: Colors.red,),
                      )
                          :
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.arrow_right_sharp, color: Colors.red,),
                      ),

                    ],
                  ),
                ),
                // input code
                haveCode ? Container(
                    height: 60,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: Center(child: TextFormField(
                      initialValue: code,
                      onChanged: (e){
                        setState(() {
                          code = e;
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusColor: Colors.red,
                        hintText: "رمز المشاركة",
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,

                      ),
                      cursorColor: Colors.red,
                      style: TextStyle(fontFamily: 'noto'),
                    ),)
                ): SizedBox(),
                // submit button
                name.length < 1 || phoneNumber.length < 1 ?
                Padding(padding: EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("التالي", style: TextStyle(fontFamily: 'noto', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),),
                  ),
                ):
                Padding(padding: EdgeInsets.symmetric(vertical: 30),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder) => talabaty()));
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(child: Text("التالي", style: TextStyle(fontFamily: 'noto', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),),
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
