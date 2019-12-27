import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
       decoration: BoxDecoration(
         color: Colors.red,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  
                  stops: [0.1,0.4],
                  colors: [
                           Colors.deepOrange,
                           Colors.red,
                  ],
                ),
              ),
      child:Column(children: <Widget>[
        Container(margin: EdgeInsets.only(top: 100),
          child:Icon(Icons.shopping_cart, size: 150),),
        Container(
          margin: EdgeInsets.symmetric(horizontal:90, vertical:15),
          child:
         Text("The Store of your dreams. You will find here what you need", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, wordSpacing: 3), textAlign: TextAlign.center),
        ),
        Container(
          margin: EdgeInsets.only(top:50),
          child:
                 RaisedButton(onPressed: (){}, color: Colors.white, shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)), padding: EdgeInsets.all(10.0), textColor:Colors.black,child: Text("START SHOPPING", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold))),
                 )
        
      ])
      );
  }
}
