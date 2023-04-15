import 'dart:math';

import 'package:Centre/modules/bmi_result/bmi_result.dart';
import 'package:flutter/material.dart';

class bmi_screen extends StatefulWidget {
  const bmi_screen({Key? key}) : super(key: key);

  @override
  State<bmi_screen> createState() => _BmiState();
}

class _BmiState extends State<bmi_screen> {

  bool isMale=true;
  double height=180;
  int weight=40;
  int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bmi Calculator'
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(image: AssetImage('assets/images/male.png'),
                              height: 90,
                              width: 90,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color: isMale ?  Colors.blue  : Colors.grey[400] ,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              height: 90,
                              width: 90,
                              ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color: isMale ?  Colors.grey[400]  : Colors.blue ,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value:height,
                        min: 0,
                        max: 250,
                        onChanged: (value){
                          setState(() {
                            height=value;
                          });
                        }
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Row(
               children:
               [
                 Expanded(
                   child: Container(
                   decoration: BoxDecoration(
                   borderRadius:BorderRadius.circular(10),
                   color: Colors.grey[400],
               ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:
                       [
                         Text(
                           'Weight',
                           style: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text(
                           '$weight',
                           style: TextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.w900,
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children:
                           [
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   weight--;
                                 });
                               },
                               heroTag: 'weight-',
                               mini: true,
                               child: Icon(
                                  Icons.remove,

                                ),

                           ),
                             FloatingActionButton(
                               mini: true,
                               onPressed: (){
                                 setState(() {
                                   weight++;
                                 });
                               },
                               heroTag: 'weight+',
                               child: Icon(
                                 Icons.add,
                               ),

                             ),

                           ],
                         )
                       ],
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 20,
                 ),
                 Expanded(
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius:BorderRadius.circular(10),
                       color: Colors.grey[400],
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:
                       [
                         Text(
                           'Age',
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text(
                           '$age',
                           style: TextStyle(
                             fontSize: 35,
                             fontWeight: FontWeight.w900,
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children:
                           [
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   age--;
                                 });
                               },
                               heroTag: 'age-',
                               mini: true,
                               child: Icon(
                                 Icons.remove,

                               ),

                             ),
                             FloatingActionButton(
                               mini: true,
                               onPressed: (){
                                 setState(() {
                                   age++;
                                 });
                               },
                               heroTag: 'age+',
                               child: Icon(
                                 Icons.add,
                               ),

                             ),

                           ],
                         )
                       ],
                     ),
                   ),
                 ),

               ],
             ),
           ),
          ),
          Container(
            color: Colors.blue,
            width: double.infinity,
            child: MaterialButton(
                onPressed: (){
                  var result = weight / pow(height / 100, 2);
                  print(result.round());

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=> bmi_result(
                            isMale: isMale,
                            result: result.round(),
                            age: age,
                          ),
                      ),
                  );
                },
                child: Text(
                  'Calculate',
                    style : TextStyle(color : Colors.white)
                ),
                height: 50,


            ),
          ),
        ],
      ),
    );
  }
}
