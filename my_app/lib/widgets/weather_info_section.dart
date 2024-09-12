import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherInfoSection extends StatelessWidget {
  const WeatherInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [      
        const SizedBox(
          height: 32,
        ),
          SvgPicture.asset(
          "assets/svg/account-svgrepo-com.svg",
          height: 90,
          width: 90,
          fit: BoxFit.fill,
        ), 
         const SizedBox(height: 16,),     
        const SizedBox(height: 16,),
        const Text(
          "Welcome again, KS!",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      
        const Text(
          "Please Log into your existing account",
          style: TextStyle(
            color: Color.fromARGB(255, 247, 247, 247),
            fontSize: 24,            
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16,),
      ],
    );
  }
}
