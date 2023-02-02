import 'package:flutter/material.dart';

class FareInfoScreen extends StatelessWidget {
  const FareInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quick Info on Tickets'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 32,),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 18.0,
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Cash or Token'),
                        const Text('1. Single Journey Token'),
                        const Text('2. Concession Token'),
                        const SizedBox(height: 16,),
                        const Text(
                          'Where to buy? How to buy?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                            'At the Token Vending Machine (TVM). For concession token, you need to go buy at station counter.'),
                        const SizedBox(height: 16,),
                        const Text('Click here for more info:'),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'https://myrapid.com.my/fares-and-payments/all-tickets/token',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Cash',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 18.0,
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Cashless or Stored Value Ticker (Touch N\'Go)'),
                        const SizedBox(height: 16,),
                        const Text(
                          'Where to buy? How to buy?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                            'At the Customer Service Office.'),
                        const SizedBox(height: 16,),
                        const Text('Click here for more info:'),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'https://myrapid.com.my/fares-and-payments/all-tickets/go-cashless',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Cashless',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 18.0,
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Concession  for'),
                        const Text('1. Student'),
                        const Text('2. OKU'),
                        const Text('3. Senior Citizen'),
                        const SizedBox(height: 16,),
                        const Text(
                          'Where to buy? How to buy?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                            'At the Concession Registration Counter located at Pasar Seni Bus Hub.'),
                        const SizedBox(height: 16,),
                        const Text('Click here for more info:'),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'https://myrapid.com.my/fares-and-payments/all-tickets/concession-cards',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Concession',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
