import 'package:flutter/material.dart';
import 'package:hkarve/compnents/circularButton.dart';
class Boarding extends StatefulWidget {
  const Boarding({Key? key}) : super(key: key);
  static const routeName = "boarding";
  @override
  State<Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15)
          ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: CircularButton(name: "Skip", radiusVal: 20.0, fontSize: 16.0, fontColor: Colors.black, backgroundColor: const Color.fromRGBO(250, 242, 231,1))
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("7", style: TextStyle(color: Color.fromRGBO(255, 206, 45,1), fontSize: 34, fontWeight: FontWeight.bold),),
                  Text("Krave", style: TextStyle(color: Color.fromRGBO(32, 161, 170,1), fontSize: 34, fontWeight: FontWeight.bold),)
                ],
              ),
              Image.asset("assets/images/welcome.png"),
              const Center(child: Text("Get food delivary to your", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),)),
              const Center(child: Text("doorstep asap", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),)),
              const SizedBox(height: 10),
              const Center(child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has "
                  "been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and",
                style: TextStyle(color: Colors.grey, fontSize: 15),textAlign: TextAlign.center,)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 25,
                    height: 8,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.amberAccent,
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 8,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.amber,
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 8,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.amberAccent,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 40,
                child: TextButton(onPressed: (){}, child: const Text("Get Started", style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(32, 161, 170,1)) ),),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? ", style: TextStyle(color: Colors.black)),
                  GestureDetector(onTap:(){},child: const Text("Sign Up", style: TextStyle(color: Color.fromRGBO(32, 161, 170,1)))),
                ],
              ),
            ],
          ),
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
