import 'package:flutter/material.dart';

void main() {
  runApp(VisitCard());
}

class VisitCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My visit card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        primarySwatch: Colors.blue, 
        scaffoldBackgroundColor: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: VisitCardHome(),
    );
  }
}

class VisitCardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center ,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Text ("A.Jude"),
            radius: 50.00,
          ),
          SizedBox(height: 20),
          Text("Jude Seruch AGBODOYETIN"),
          Divider(
          
            thickness:2.0,
            color: Colors.grey,
            height: 40.0,
            indent:100.0,
            endIndent:100.0,
          ),
          Text("FLUTTER DEVELOPER"),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              ),
            child:Row(
              children:[
                Icon(Icons.call, color: Colors.teal,size: 30,),
                SizedBox(width:30.0),
                Text("+229 64821365")
              ],
            ),
          ),
          
            Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              ),
            child:Row(
              children:[
                Icon(Icons.mail, color: Colors.teal,size: 30,),
                SizedBox(width:30.0),
                Text("Judeseruch@gmail")
              ],
            ),
          ), 

          ButtonBar(
            children: [  
              ElevatedButton(onPressed: () {
               
              } , child: Row (children: [
                Text("Page suivant"),
                 Icon(Icons.arrow_right),
              ],)  ),
              
            ],
          ),
      ],
      ),
    );
  }
}