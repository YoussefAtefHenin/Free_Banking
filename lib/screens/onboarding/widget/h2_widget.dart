import 'package:flutter/material.dart';
import 'package:free_banking/models/onBordingText_model.dart';

class H2TextWidget extends StatelessWidget {
 final OnbordingTextModel h2;
  const H2TextWidget(this.h2,{super.key});

  @override
  Widget build(BuildContext context) {
    return 
          Center(
            child: Column(
              children: [
                Text(h2.subtitle,style:TextStyle(
                  color: Color(0xff7E848D),
                ) ,
                ),
                Text(h2.subtitle2,style:TextStyle(
                  color: Color(0xff7E848D),
                  ),
                  ),
              ],
            ),
          );

      
      
    
  }
}