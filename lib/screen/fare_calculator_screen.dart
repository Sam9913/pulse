import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pulse/screen/fare_info_screen.dart';

import '../model/station_response_model.dart';
import 'station_screen.dart';

class FareCalculatorScreen extends StatefulWidget {
  const FareCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<FareCalculatorScreen> createState() => _FareCalculatorScreenState();
}

class _FareCalculatorScreenState extends State<FareCalculatorScreen> {
  Stops? selectedFrom, selectedTo;
  double cash = 0;
  double cashless = 0;
  double concession = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fare Calculator'),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FareInfoScreen(),
                  ),
                );
              },
              child: const Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              color: Color(0xFF0F3892),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'FROM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: InkWell(
                    onTap: () async {
                      var data = await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const StationScreen(type: 1,),
                        ),
                      );

                      if (data != null) {
                        setState(() {
                          selectedFrom = data;
                        });

                        if (selectedTo != null) {
                          calculateFare();
                        }
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedFrom == null
                                ? 'Select Location'
                                : (selectedFrom?.stopName ?? ''),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Text(
                  'TO',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: InkWell(
                    onTap: () async {
                      var data = await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const StationScreen(type: 1,),
                        ),
                      );

                      if (data != null) {
                        setState(() {
                          selectedTo = data;
                        });

                        if (selectedFrom != null) {
                          calculateFare();
                        }
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedTo == null
                                ? 'Select Location'
                                : (selectedTo?.stopName ?? ''),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Cash: RM${cash.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Cashless: RM${cashless.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Concession: RM${concession.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  calculateFare() async {
    var url = Uri.https(
      'jp.myrapid.com.my',
      '/endpoint/geoservice/fares',
      {
        'agency': 'rapidkl',
        'from': selectedFrom?.stopId,
        'to': selectedTo?.stopId,
      },
    );

    var response = await get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      var data = jsonResponse['fares'];
      setState(() {
        cash = double.parse(data['cash']);
        cashless = double.parse(data['cashless']);
        concession = double.parse(data['consession']);
      });
    } else {
      debugPrint('Request failed with status: ${response.statusCode}.');
    }
  }
}
