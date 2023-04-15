import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class counter_screen extends StatefulWidget {
  counter_screen({Key? key}) : super(key: key);

  @override
  State<counter_screen> createState() => _CalculState();
}

class _CalculState extends State<counter_screen> {
   int counter=1 ;

   @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Container(
           child: Text.rich(
             TextSpan(
               text: 'Calculatrice', // default text style
           ),
         ),
       ),
       ),
       body: Center(

         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children:
           [
             TextButton(

                 onPressed: (){
                   setState(() {

                   });
                   counter--;
                   print(counter);
                 },
                 child: Text(
                     'Minus'
                 ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 20,
                 //vertical: 20,
               ),
               child: Text(
                   '$counter'
               ),
             ),
             TextButton(
               onPressed: (){
                 setState(() {
                   counter++;
                   print(counter);
                 });

               },
               child: Text(
                   'Plus'
               ),
             ),

           ],
         ),
       ),


     );
  }
}
