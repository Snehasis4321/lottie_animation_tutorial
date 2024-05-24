import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isShown=false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: Duration(seconds: 3));
    _controller.forward();
    Future.delayed(Duration(seconds: 3),(){
      setState(() {
        
      isShown=true;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.network("https://lottie.host/4d355e67-e191-4223-9f5b-eecbc5c9afb8/46smvZ9vrl.json", controller: _controller),
      isShown?  TextButton(onPressed: (){
          Navigator.pop(context);
        },child: Text("Click here to go back",style: TextStyle(fontSize: 20),)):SizedBox(height: 55,)
      ],
    )),
    
    );
  }
}