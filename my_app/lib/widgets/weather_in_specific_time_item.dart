// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class WeatherInSpecificTimeItem extends StatelessWidget {
//   final String time;
//   final String weatherIconPath;
//   const WeatherInSpecificTimeItem({
//     Key? key,
//     required this.time,
//     required this.weatherIconPath,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           time,
//           style: const TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(
//           height: 8,
//         ),
//         SvgPicture.asset(
//           weatherIconPath,
//           width: 39,
//           height: 27,
//           fit: BoxFit.cover,
//         )
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherInSpecificTimeItem extends StatelessWidget {
  final String time;
  final String weatherIconPath;
  const WeatherInSpecificTimeItem({
    Key? key,
    required this.time,
    required this.weatherIconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          time,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SvgPicture.asset(
          weatherIconPath,
          width: 39,
          height: 27,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}