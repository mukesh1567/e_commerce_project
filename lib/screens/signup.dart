import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_e_commerce/screens/splash.dart';

class SignUpPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SignUpPageState();
}
class SignUpPageState extends State<SignUpPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController pass1Controller = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade200,
        title: Text("SignUp Page",style: TextStyle(color: Colors.white),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                label: Text("Name"),
                hintText: "Enter your name",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: Colors.black
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                label: Text("Email"),
                hintText: "Enter your email",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: Colors.black
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            TextField(
              controller: mobileController,
              decoration: InputDecoration(
                label: Text("PhoneNumber"),
                hintText: "Enter your mobile number",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: Colors.black
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              controller: pass1Controller,
              decoration: InputDecoration(
                label: Text("Enter Password"),
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: Colors.black
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              controller: pass2Controller,
              decoration: InputDecoration(
                label: Text("Re-Enter Password"),
                hintText: "Re-Enter your password",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: Colors.black
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            ///condition for blanck id

            OutlinedButton(onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return Splash();
              }));


            },
                child: Text("Sign Up")),

            SizedBox(height: 20,),

            Text('If you already have account, click'),

            OutlinedButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Splash(),));
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}