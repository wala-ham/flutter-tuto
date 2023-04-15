import 'package:flutter/material.dart';

class bmi_result extends StatelessWidget {
  final bool isMale;
  final int age, result;

  const bmi_result({
      required this.isMale,
      required this.age,
      required this.result,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          'BMI Result'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
                'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
            ),
            Text(
                'Result : $result',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
            ),
            Text(
                'Age : $age',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
