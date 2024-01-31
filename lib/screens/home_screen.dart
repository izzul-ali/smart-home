import 'package:flutter/material.dart';
import 'package:smart_home_app/constant/colors.dart';

import '../models/item_model.dart';
import '../components/category_widget.dart';
import '../components/feature_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi Arpan',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3),
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffDBE0E7),
                    Color(0xffF8FBFF),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFCBD2F6),
                    offset: Offset(4, 4),
                    blurRadius: 10,
                  )
                ],
              ),
              child: const Center(
                child: Icon(
                  Icons.settings_outlined,
                  size: 23,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        children: [
          Row(
            children: [
              // Weather location
              Expanded(
                child: Container(
                  height: 106,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff00FFF0),
                        Color(0xff0029FF),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffB6C2CD),
                        blurRadius: 5,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My Location',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Indonesia',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(
                                Icons.cloud,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Partly Cloudy',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Text(
                          '28°',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 8),

              // Energy monitor
              Expanded(
                child: Container(
                  height: 106,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color(0xffEAEAEA),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffB6C2CD),
                        blurRadius: 5,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Energy Saving',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff191919),
                            ),
                          ),
                          Text(
                            '+35%',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff09D642),
                            ),
                          ),
                          Text(
                            '23.5 kWh',
                            style: TextStyle(
                              fontSize: 12,
                              color: COLORS.secondaryTextColor,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Transform.rotate(
                          angle: 0.2,
                          child: const Icon(
                            Icons.flash_on_outlined,
                            size: 60,
                            color: COLORS.primaryIconColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 35),

          // category
          const CategoryWidget(
            categories: ['Living Room', 'Bedroom', 'Kitchen'],
          ),

          // Features
          const SizedBox(height: 25),

          GridView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 4,
            ),
            itemBuilder: (context, index) {
              return FeatureCard(
                item: items[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
