// import 'package:flutter/material.dart';
// // import 'package:flutter_learning/lesson_14_assignment/widgets/weather_info_item.dart';
// import 'package:flutter_learning/widgets/weather_info_item.dart';
// class WeatherInfo2Section extends StatelessWidget {
//   const WeatherInfo2Section({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//           color: const Color(0xff111212).withOpacity(0.5),
//           borderRadius: BorderRadius.circular(16)),
//       child: const Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               WeatherInfoItem(title: "Humidity", content: "40%"),
//               SizedBox(
//                 height: 28,
//               ),
//               WeatherInfoItem(title: "PM10", content: "33.4µg/m³"),
//               SizedBox(
//                 height: 28,
//               ),
//               WeatherInfoItem(title: "UV", content: "2.2"),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               WeatherInfoItem(title: "Wind", content: "2km/h"),
//               SizedBox(
//                 height: 28,
//               ),
//               WeatherInfoItem(title: "Sunrise", content: "6:35"),
//               SizedBox(
//                 height: 28,
//               ),
//               WeatherInfoItem(title: "Sunset", content: "17:55"),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class WeatherInfo2Section extends StatelessWidget {
  const WeatherInfo2Section({super.key});

  @override
  Widget build(BuildContext context) {
    // TextEditingController để theo dõi nội dung ô input
    TextEditingController emailController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // Ô nhập email
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Nhập email của bạn',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherInfoItem extends StatelessWidget {
  final String title;
  final String content;
  const WeatherInfoItem(
      {super.key, required this.title, required this.content});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title: ',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(content),
      ],
    );
  }
}