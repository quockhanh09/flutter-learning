// import 'package:flutter/material.dart';
// import 'package:flutter_learning/widgets/weather_in_specific_time_item.dart';

// class WeatherInfoInTime extends StatelessWidget {
//   const WeatherInfoInTime({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//           color: const Color(0xff111212).withOpacity(0.5),
//           borderRadius: BorderRadius.circular(16)),
//       child: const Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Max: 37.4°C",
//                 style: TextStyle(fontSize: 24, color: Colors.white),
//               ),
//               Text(
//                 "Min: 22.1°C",
//                 style: TextStyle(fontSize: 24, color: Colors.white),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 32,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               WeatherInSpecificTimeItem(
//                   time: "12 AM",
//                   weatherIconPath: "assets/svg/weather_icon.svg"),
//               WeatherInSpecificTimeItem(
//                   time: "01 AM",
//                   weatherIconPath: "assets/svg/weather_icon.svg"),
//               WeatherInSpecificTimeItem(
//                   time: "02 AM",
//                   weatherIconPath: "assets/svg/weather_icon.svg"),
//               WeatherInSpecificTimeItem(
//                   time: "03 AM",
//                   weatherIconPath: "assets/svg/weather_icon.svg"),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class WeatherInfoInTime extends StatefulWidget {
  const WeatherInfoInTime({super.key});

  @override
  State<WeatherInfoInTime> createState() => _WeatherInfoInTimeState();
}

class _WeatherInfoInTimeState extends State<WeatherInfoInTime> {
  bool _obscureText = true;
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          TextFormField(
            controller: _passwordController,
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: _togglePasswordVisibility,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              fillColor: Colors.white.withOpacity(0.1),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}