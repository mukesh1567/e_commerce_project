import 'package:flutter/material.dart';
import 'package:task_e_commerce/screens/signup.dart';

class LoginPage extends StatelessWidget{

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade200,
        title: Text("Login Page",style: TextStyle(color: Colors.white
        ),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [

            SizedBox(height: 100,),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Enter email ID',
                  label: Text("Email"),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.black
                      )
                  )
              ),
            ),

            SizedBox(height: 20,),

            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              controller: passController,
              decoration: InputDecoration(
                  hintText: 'Enter password',
                  label: Text("Password"),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.black
                      )
                  )
              ),
            ),

            SizedBox(height: 20,),
            OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return SignUpPage();
              }));


            },
                child: Text("Login")),

            SizedBox(height: 20,),


            Text("New user? Create account now"),

            // OutlinedButton(onPressed: (){
            //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage1()));
            // }, child: Text("Sign Up"))
          ],
        ),
      ),
    );
  }
}