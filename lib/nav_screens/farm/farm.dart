import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class FarmHome extends StatefulWidget {
  const FarmHome({super.key});

  @override
  State<FarmHome> createState() => _FarmHomeState();
}

class _FarmHomeState extends State<FarmHome> {
  int counter = 0;
  //We use this so we can change the width easily
    double w = 300;
    //We use this so we can change the height easily
    double h = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff34b982),
      body: Container(
        child: Center(
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
       
            children: [
              SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Container(
              width: w*0.5,
              height: h*0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(
                      "img/signin.png"
                    ),
                    fit: BoxFit.cover
                  ),
                ),
                child: Center(
                  child: Text(
                        "Go Back",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1d5055)
                        ),
                      ),
                ),
            ),
          ),
              Text("$counter"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                child: Text("Increase"),
                onPressed: (){
                  setState(() {
                    counter++;
                  });
                },
              )     
            ],
          ),
        ),
      ),
    );
  }
}