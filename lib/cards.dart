import 'package:flutter/material.dart';

class Exercise extends StatefulWidget {
  const Exercise({super.key});

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  Widget getCard(String title, IconData icon, Color color) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      width: 100,
      height: 100,
      color: color,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(icon),
        Text(title),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercice'),
      ),
      body: Column(
        children: [
          getCard('Home', Icons.home_outlined, Colors.red),
          getCard('Repairing', Icons.home_repair_service_outlined, Colors.blue),
          getCard('Car', Icons.car_repair_outlined, Colors.green),
          getCard('House', Icons.h_mobiledata_rounded, Colors.black),
          Row(
            children: [
              getCard('HOUSE', Icons.ac_unit_rounded, Colors.green),
              getCard('HOUSE', Icons.ac_unit_rounded, Colors.green),
              getCard('HOUSE', Icons.ac_unit_rounded, Colors.green),
            ],
          )
        ],
      ),
    );
  }
}
