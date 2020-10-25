import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var nameController;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Row(
            children: [
              Padding(padding: EdgeInsets.all(10),),
              Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,),
              ),
            ],
          ),
          backgroundColor: Colors.purple,
        ),
        body: Padding(
          padding: EdgeInsets.all(2),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 10,bottom: 20),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name'

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name'

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    suffixIcon: Icon(
                      Icons.visibility_off_rounded,
                    ),
                  ),
                ),
              ),

              Container(

                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,

                  decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    labelText: 'Enter Password',
                    suffixIcon: Icon(Icons.visibility_off_rounded,

                    ),

                  ),
                ),
              ),

              Container(
                alignment: Alignment.center,
                child: Text(
                    'Available to be a'
                ),
              ),


              Container(
                padding: EdgeInsets.only(left:65),
                child: Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text('Mentor'),

                    Container(
                      padding: EdgeInsets.only(left: 45),
                      child:Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ) ,
                    ),
                    Text('Mente')
                  ],
                ),
              ),
              Container(
                child:CheckboxListTile(
                  title: Text('I affirm that i have  and accept to be be bount by the AnitaB.org Code of Conduct ,Terms and Privacy  Policy . flutter ,I consent to use of may information for the  stated purpose '),
                  value: false,
                  activeColor: Colors.deepPurpleAccent,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (value) {},
                ),
              ),


              Container(
                padding: EdgeInsets.only(top: 20),
                child : RaisedButton(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.lightBlue,
                  onPressed: () {

                  },
                ),
              ),

            ],

          ),


        )


    );
  }
}

