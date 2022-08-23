import 'package:flutter/material.dart';
import 'package:talabaty/talabaty/talabaty.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();

}

class _LoadingState extends State<Loading> {

  Future Delay() async {
    await new Future.delayed(Duration(seconds: 4), (){
      Navigator.push(context, MaterialPageRoute(builder: (builder) => talabaty()));
    });
  }

  @override
  void initState() {
    Delay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 90), child: Image.asset("images/talabaty.png", width: 430,)),
            Padding(padding: EdgeInsets.only(top: 90), child: Text("Loading...", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),)),
            Padding(padding: EdgeInsets.only(top: 50), child: CircularProgressIndicator(backgroundColor: Colors.red, color: Colors.white,)),
            Padding(padding: EdgeInsets.only(top: 100), child: Text("www.w52.com", style: TextStyle(color: Colors.white),)),
          ],
        )
    );
  }
}
