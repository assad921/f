import 'package:flutter/material.dart';



class order extends StatefulWidget{
  SignUpState createState()=>SignUpState();
}

class SignUpState extends State{

  final emailcontroller = TextEditingController();
  final namecontroller = TextEditingController();
  final mobilecontroller = TextEditingController();
  final passcontroller = TextEditingController();

  Widget build(BuildContext context){


    final emailField = TextField(
      obscureText: false,
      controller: emailcontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email Here",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );


    final name = TextField(
      obscureText: false,
      controller: namecontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Name Here",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );


    final mobile = TextField(
      obscureText: false,
      controller: mobilecontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Mobile Here",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );


    final dateField = TextField(
      obscureText: false,
      controller: passcontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Date Here",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );


    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.red,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 15.0),

        onPressed: () {
          User user=User();
          user.email=emailcontroller.text;
          user.name=namecontroller.text;
          user.mobile=mobilecontroller.text;
          user.pass=passcontroller.text;

          showAlertDialog(context,user);

        },

        child: Text("Submit",textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),),

      ),
    );


    return Scaffold(

      appBar: AppBar(title: Text("Order Rent Car")),

      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding:  EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Order Rent Car",style: TextStyle(color:Colors.red)),

                SizedBox(height: 15.0),
//                emailField,

                SizedBox(height: 25.0),
                name,

                SizedBox(height: 25.0),
                mobile,

                SizedBox(height: 25.0),
                mobile,

                SizedBox(height: 25.0),
                dateField,

                SizedBox(height: 35.0,),
                loginButon,
                SizedBox(height: 15.0,),

              ],),),),),);

  }
}

showAlertDialog(BuildContext context,User user){

  Widget gotIt = FlatButton(

    child: Text("Got It"),
    onPressed: () {

      Navigator.of(context, rootNavigator: true).pop('alert');
    },
  );

  AlertDialog alert = AlertDialog(

    title: Text("Order title"),

    content: Text(user.email+"\n"+user.name+"\n"+user.mobile+"\n"+user.pass),

    actions: [
      gotIt,
    ],
  );


  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

//model class
class User{
  String email;
  String name;
  String mobile;
  String pass;
}