import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Lottie from asset file",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            LottieBuilder.asset("lottie/search.json",
            height: 200,width: 200,),
            Text("Lottie from network file",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            Lottie.network("https://lottie.host/4d355e67-e191-4223-9f5b-eecbc5c9afb8/46smvZ9vrl.json", height: 200,width: 200,)
          ],
        ),
      ),
    );
  }
}