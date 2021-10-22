import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

// ignore: unused_element
class WeatherForcast extends StatelessWidget {
  const WeatherForcast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppBar(
            title: const Text(
              'Weather Forecast',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.5,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SafeArea(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  // ignore: unnecessary_const
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      fillColor: Colors.white,
                      label: Text('Enter City Name'),
                      labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 28.0, left: 14, right: 14, bottom: 28.0),
                    child: Column(
                      children: const [
                        Text(
                          'Nizhegorodskay oblast, RU',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(width: 10, height: 10),
                        Text('Saturday, Oct 16, 2021',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300))
                      ],
                    )),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 75),
                  child: ListTile(
                    leading: Icon(
                      Icons.wb_sunny,
                      size: 85,
                      color: Colors.white,
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        '14 °F',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    subtitle: Text(
                      'LIGHT SNOW',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Icon(Icons.ac_unit),
                          Text('5', style: styleWeaterDetail),
                          Text('km/hr', style: styleWeaterDetail),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(Icons.ac_unit),
                          Text('3', style: styleWeaterDetail),
                          Text('%', style: styleWeaterDetail),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(Icons.ac_unit),
                          Text('20', style: styleWeaterDetail),
                          Text('%', style: styleWeaterDetail),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Wrap _WeatherDetail() {
//   return Wrap(
//       spacing: 20,
//       children: List.generate(7, (int? index) {
//         return Chip(label: Text('Friday'));
//       }));
// }

// Wrap _WeatherDetailDown() {
//   return Wrap(
//     spacing: 15,
//     children: [
//       Chip()
//     ],
//   );
// }

TextStyle styleWeaterDetail = const TextStyle(
  color: Colors.white,
  fontSize: 22.5,
);
