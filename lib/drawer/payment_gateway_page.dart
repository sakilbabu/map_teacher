import 'package:flutter/material.dart';

class PaymentWatchTab extends StatelessWidget {
  const PaymentWatchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('Make Payment'),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Bkash"),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrangeAccent),
                    ),
                    onPressed: () {},
                    child: const Text('Checkout')),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1,
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Nagad"),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrangeAccent),
                    ),
                    onPressed: () {},
                    child: const Text('Checkout')),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1,
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Rocket"),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrangeAccent),
                    ),
                    onPressed: () {},
                    child: const Text('Checkout')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
