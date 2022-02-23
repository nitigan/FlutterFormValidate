import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  //const WelcomePage({Key? key}) : super(key: key);
  String name, weight, height;

  WelcomePage({
    Key? key,
    required this.name,
    required this.weight,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Data'),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Your Name : '),
                    subtitle: Text('$name'),
                  ),
                ),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Your Weight : '),
                    subtitle: Text('$weight'),
                  ),
                ),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Your Height : '),
                    subtitle: Text('$height'),
                  ),
                ),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Total : '),
                    subtitle: Text(
                      '' +
                          sumTotal(double.parse(weight), double.parse(height))
                              .toString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double sumTotal(double w, double h) {
    double total = w + h;

    return total;
  }
}
