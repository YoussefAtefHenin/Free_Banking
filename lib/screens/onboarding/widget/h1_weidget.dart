import 'package:flutter/material.dart';
import 'package:free_banking/models/onBordingText_model.dart';

class H1TextWidget extends StatelessWidget {
 final OnbordingTextModel h1;
  const H1TextWidget(this.h1,{super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
          Text(h1.title,style:TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ) ,
          ),

        
      
    );
  }
}