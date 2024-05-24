import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Example3 extends StatefulWidget {
  const Example3({super.key});

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isLiked=false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: GestureDetector(
        onTap: (){
          isLiked=!isLiked;
          if(isLiked){
            _controller.forward();
          }
          else{
            _controller.reverse(from: 0.2);
          }
          setState(() {
            
          });
        },
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Lottie.asset("lottie/like.json",controller: _controller, height: 200, width: 200, fit: BoxFit.contain)
          ,Text(isLiked?"Unlike":"Like",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24, color: Colors.grey.shade600),)
        ],),
      ),
    ),);
  }
}