// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// class WeatherInfoSection extends StatelessWidget {
//   const WeatherInfoSection({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Text(
//           "10.82, 206.24",
//           style: TextStyle(color: Colors.white, fontSize: 20),
//         ),
//         const SizedBox(
//           height: 32,
//         ),
//         const Text(
//           "Ho Chi Minh City",
//           style: TextStyle(
//               color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(
//           height: 16,
//         ),
//         SvgPicture.asset(
//           "assets/svg/weather_icon.svg",
//           height: 148,
//           width: 148,
//           fit: BoxFit.fill,
//         ),
//         const SizedBox(
//           height: 16,
//         ),
//         const Text(
//           "Soft light",
//           style: TextStyle(
//             color: Color(0xffCCCCCC),
//             fontSize: 24,
//           ),
//         ),
//         const SizedBox(
//           height: 16,
//         ),
//         const Text(
//           "32°C",
//           style: TextStyle(
//               color: Colors.white, fontSize: 64, fontWeight: FontWeight.bold),
//         ),
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 43),
//           child: Text(
//             "Duststorm, sandstorm, drifting or blowing snow",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 20, color: Color(0xffE7E7F1)),
//           ),
//         ),
//       ],
//     );
//   }
// }

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