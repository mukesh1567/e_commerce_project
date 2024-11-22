import 'package:flutter/material.dart';
import 'package:task_e_commerce/screens/home_bottomnav.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 3,
            ),

            Icon(Icons.shopping_cart_outlined,size: 250,color: Colors.orange,),

            SizedBox(
              height: 50,
            ),
            Text("Ecommerce",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,),
            ),
            Text(
              "Transform Your World",
              //Inovation Personified
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 15,
                  color: Colors.orange,),
            ),
            Spacer(
              flex: 4,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return BottomHomePage();
                }));

              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            Spacer(flex: 4,),

          ],
        ),
      ),
    );
  }

}
