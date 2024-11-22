import 'package:flutter/material.dart';
import '../../constants/textstyle_constant.dart';

class NavHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.shade300,
                ),
                child: Icon(Icons.menu)),
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.shade300,
                ),
                child: Icon(Icons.notifications)),
          ],
        ),
        SizedBox(height: 20,),
        TextField(
            controller: searchController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon:Icon(Icons.menu_open),
              filled: true,
              fillColor: Colors.grey.shade200,
              hintText: "Search..",
              hintStyle: mTextStyle12(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                ),
              ),
            )),
        SizedBox(height: 20,),

        Card(
          elevation: 10,
          shadowColor: Colors.black,
          color: Colors.grey,
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/footwear1.jpg"),
            fit: BoxFit.cover)
          ),
          ),

        ),
        SizedBox(height: 20,),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: 60,height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                      image: DecorationImage(image: AssetImage("assets/images/footwear2.jpeg"),
                      fit: BoxFit.cover)
                    ),
                  ),
          
                  Text("Shoes",style: mTextStyle12(mFontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(width: 10,),

              Column(
                children: [
                  Container(
                    width: 60,height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey,
                        image: DecorationImage(image: AssetImage("assets/images/footwear2.jpeg"),
                            fit: BoxFit.cover)
                    ),
                  ),
          
                  Text("Shoes",style: mTextStyle12(mFontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(width: 10,),

              Column(
                children: [
                  Container(
                    width: 60,height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey,
                        image: DecorationImage(image: AssetImage("assets/images/footwear2.jpeg"),
                            fit: BoxFit.cover)
                    ),
                  ),

                  Text("Shoes",style: mTextStyle12(mFontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(width: 10,),

              Column(
                children: [
                  Container(
                    width: 60,height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey,
                        image: DecorationImage(image: AssetImage("assets/images/footwear2.jpeg"),
                            fit: BoxFit.cover)
                    ),
                  ),
          
                  Text("Shoes",style: mTextStyle12(mFontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(width: 10,),

              Column(
                children: [
                  Container(
                    width: 60,height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey,
                        image: DecorationImage(image: AssetImage("assets/images/footwear2.jpeg"),
                            fit: BoxFit.cover)
                    ),
                  ),
          
                  Text("Shoes",style: mTextStyle12(mFontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(width: 10,),

              Column(
                children: [
                  Container(
                    width: 60,height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey,
                        image: DecorationImage(image: AssetImage("assets/images/footwear2.jpeg"),
                            fit: BoxFit.cover)
                    ),
                  ),
          
                  Text("Shoes",style: mTextStyle12(mFontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(width: 10,),

              Column(
                children: [
                  Container(
                    width: 60,height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey,
                        image: DecorationImage(image: AssetImage("assets/images/footwear2.jpeg"),
                            fit: BoxFit.cover)
                    ),
                  ),

                  Text("Shoes",style: mTextStyle12(mFontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(width: 10,),


            ],
          ),
        ),

        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Special for you",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold
            ),),
            
            Text("see all",style: TextStyle(
              fontSize: 15
            ),)
          ],
        )



      ],
              ),
            ),
    );
  }
}
