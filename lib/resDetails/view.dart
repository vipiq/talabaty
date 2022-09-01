import 'package:flutter/material.dart';
import 'package:talabaty/talabaty/talabaty.dart';

class resDetails extends StatefulWidget {
  final String name;
  final String rate;
  final int priceDelever;
  final int price;
  final String location;
  final String food;
  final String imageUrl;

  resDetails({
    required this.name,
    required this.rate,
    required this.priceDelever,
    required this.price,
    required this.location,
    required this.food,
    required this.imageUrl,
  });

  @override
  State<resDetails> createState() => _resDetailsState();
}

class _resDetailsState extends State<resDetails> {
   int numOfOrder = 1;
   int totalPrice = 0;
   @override
  void initState() {
    totalPrice = widget.price;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(image:
                    NetworkImage("${widget.imageUrl}"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              Positioned(top: 50, right: 20,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop(talabaty());
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [BoxShadow(
                              color: Colors.white.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 20,
                              offset: Offset(3, 3)
                          )]
                      ),
                      child: Icon(Icons.arrow_forward_rounded),
                    ),
                  )
              ),
              Positioned(
                  top: 140,
                  child: Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                    ),
                  )
              )
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 10),
                  child: Text("${widget.name}", style: TextStyle(fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold, fontFamily: 'noto'),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.rate}", style: TextStyle(fontSize: 20, fontFamily: 'noto'),),
                    SizedBox(width: 4,),
                    Icon(Icons.emoji_emotions_outlined),
                    SizedBox(width: 10,),
                    Container(
                      width: 180,
                      child: Text("سعر التوصيل: ${widget.priceDelever} د.ع ", style: TextStyle(fontSize: 20, fontFamily: 'noto'), textAlign: TextAlign.right,),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15, left: 5),
                      child: Icon(Icons.moped_outlined),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 140,
                      child: Text("الحد الادنى للطلب: 5000 د.ع", style: TextStyle(fontSize: 20, fontFamily: 'noto'), textAlign: TextAlign.right,),
                    ),
                    SizedBox(width: 4,),
                    Icon(Icons.arrow_circle_down_sharp),
                    SizedBox(width: 10,),
                    Container(
                      width: 180,
                      child: Text("${widget.location}", style: TextStyle(fontSize: 20, fontFamily: 'noto'), textAlign: TextAlign.right,),
                    ),
                    SizedBox(width: 6,),
                    Icon(Icons.location_on_outlined)
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 355,
                        child: Text("وقت التوصيل المتوقع من نصف ساعة الى ساعة", style: TextStyle(fontSize: 20, fontFamily: 'noto'), textAlign: TextAlign.right,),
                      ),
                      SizedBox(width: 8,),
                      Icon(Icons.access_time)
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text("${widget.food}", style: TextStyle(fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold, fontFamily: 'noto'),),
                ),
                Container(
                  height: 80,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.keyboard_arrow_up_outlined, size: 35,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("اضافات", style: TextStyle(fontSize: 23, color: Colors.red, fontFamily: 'noto'),),
                          Text("اختياري", style: TextStyle(fontSize: 15, fontFamily: 'noto'),),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top:20),
                  child: Text("تعليمات خاصة", style: TextStyle(fontSize: 20, fontFamily: 'noto'),),
                ),
                Container(
                  height: 70,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Text("اذا كانت لديك اي ملاحظات تخص الطلب يرجى الاتصال بنا", style: TextStyle(fontFamily: 'noto', fontSize: 20, color: Colors.grey), textAlign: TextAlign.right,),
                ),

                Padding(padding: EdgeInsets.only(top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      numOfOrder >= 2 ?
                      GestureDetector(
                        onTap: (){
                          setState((){
                            numOfOrder = numOfOrder -1;
                            totalPrice = widget.price * numOfOrder;
                          });
                        },
                        child: Container(
                          width: 42,
                          height: 42,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text("-", style: TextStyle(fontSize: 35, ),),
                        ),
                      )
                      :
                      Container(
                            width: 42,
                            height: 42,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text("-", style: TextStyle(fontSize: 35,color: Colors.grey ),),
                          ),
                      Container(
                        width: 100,
                        height: 42,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text("$numOfOrder", style: TextStyle(fontSize: 20, ),),
                      ),
                      numOfOrder < 10 ?
                      GestureDetector(
                        onTap: (){
                          setState((){
                            numOfOrder = numOfOrder +1;
                            totalPrice = widget.price * numOfOrder;
                          });
                        },
                        child: Container(
                          width: 42,
                          height: 42,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text("+", style: TextStyle(fontSize: 25, ),),
                        ),
                      )
                          :
                      Container(
                        width: 42,
                        height: 42,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text("-", style: TextStyle(fontSize: 35,color: Colors.grey ),),
                      ),
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" د.ع ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red, fontFamily: 'noto'),),
                      Text("${totalPrice}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red, fontFamily: 'noto'),),
                    ],
                  ),
                ),

                Container(
                  height: 60,
                  width: 400,
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("اضافة الى السلة", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'noto', color: Colors.white)),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
