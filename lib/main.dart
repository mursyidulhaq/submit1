import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Register(),debugShowCheckedModeBanner: false,
    );
  }
}
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          actions: [
            Row(
              children: [
               Container(
                 padding: EdgeInsets.only(right: 10),
                child:  Icon(Icons.settings),
               )
              ],
            )
          ],
          title: Center(
            child: Text(
              'My Profile',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,) ,
            ),

          ),
          backgroundColor: Colors.purple,

        ),
       body: ListView(

         children:<Widget> [
           Padding(padding: EdgeInsets.all(10),),
           Container(
             width: MediaQuery.of(context).size.width,
             height: 150,
             decoration: BoxDecoration(
               color: Colors.purple,
               shape: BoxShape.circle
             ),
             child: Center(
               child: Icon(Icons.person,size: 90,),
             ),
           ),
           SizedBox(height: 5,),
           Container(
             child: Center(
               child: Text("Barpik Parcia"),
             ),
           ),

           Container(
             padding: EdgeInsets.only(left: 80,right: 80,),
               child: Center(
                 child: TextField(
                   decoration: InputDecoration(
                     
                   ),
                 ),
               ),
           ),
           Container(
             padding: EdgeInsets.only(left: 20,right: 20,),
             child: Center(
               child: TextField(
                 decoration: InputDecoration(
                   labelText: 'Username'

                 ),
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.only(left: 20,right: 20,),
             child: Center(
               child: TextField(
                 decoration: InputDecoration(
                     labelText: 'Email'

                 ),
               ),
             ),
           ),
           Container(
             child:CheckboxListTile(
               title: Text('Available to mentro '),
               value: true,
               activeColor: Colors.blue,
               controlAffinity: ListTileControlAffinity.trailing,
               onChanged: (value) {},
             ),
           ),
           Container(
             child:CheckboxListTile(
               title: Text('Needs Mentoring '),
               value: true,
               activeColor: Colors.blue,
               controlAffinity: ListTileControlAffinity.trailing,
               onChanged: (value) {},
             ),
           ),
           Container(
             padding: EdgeInsets.only(left: 20,right: 20,),
             child: Center(
               child: TextField(
                 decoration: InputDecoration(
                     labelText: 'Bio'

                 ),
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.only(left: 20,right: 20,),
             child: Center(
               child: TextField(
                 decoration: InputDecoration(
                     labelText: 'Stack Usernama'

                 ),
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.only(left: 20,right: 20,),
             child: Center(
               child: TextField(
                 decoration: InputDecoration(
                     labelText: 'Location'

                 ),
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.only(left: 20,right: 20,),
             child: Center(
               child: TextField(
                 decoration: InputDecoration(
                     labelText: 'Ocuppaation'

                 ),
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.only(left: 20,right: 20),
             child : RaisedButton(

               child: Text(
                 "Sign Up",
                 style: TextStyle(color: Colors.white),
               ),
               color: Colors.lightBlue,
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),
                 );
               },
             ),
           ),



         ],

       ),
        floatingActionButton: FloatingActionButton(

          tooltip: 'Increment',
          child: Icon(Icons.edit),
        ),


    );

  }
}


