// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/weather_info_2_section.dart';
import 'package:flutter_learning/widgets/weather_info_in_time.dart';
// import 'package:flutter_learning/lesson_14_assignment/widgets/weather_info_2_section.dart';
// import 'package:flutter_learning/lesson_14_assignment/widgets/weather_info_in_time.dart';
// import 'package:flutter_learning/lesson_14_assignment/widgets/weather_info_section.dart';
import 'package:flutter_learning/widgets/weather_info_section.dart';
import 'package:flutter_learning/widgets/button_lo.dart';

// import 'package:flutter_learning/widgets/weather_info_3_section.dart';
class WeatherDetailScreen extends StatelessWidget {
  const WeatherDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg2.png"), fit: BoxFit.cover)),
        child: SafeArea(
          child: Stack(
            children: [
              const Positioned.fill(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        WeatherInfoSection(),
                        SizedBox(
                          height: 32,
                        ),
                        WeatherInfo2Section(),
                        SizedBox(
                          height: 16,
                        ),
                        WeatherInfoInTime(),
                        SizedBox(height: 16),
                        SizedBox(height: 16),
                        LoginButton(),
                        SizedBox(height: 16),
                        SizedBox(height: 16),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Forgot your password?",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Text(
                                "Click Here",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
