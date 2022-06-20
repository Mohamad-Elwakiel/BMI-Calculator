// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:bmicalculator/BMI_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BMI_calcuator extends StatefulWidget {
  const BMI_calcuator({Key? key}) : super(key: key);

  @override
  State<BMI_calcuator> createState() => _BMI_calcuatorState();
}

class _BMI_calcuatorState extends State<BMI_calcuator> {
  double height  = 120;
  bool isMale = true;
  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'
        ),
      ),
      body: Container(
        color: Colors.black54,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },

                        child: Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/Male.png'),
                                height: 90,
                                width: 90,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.grey : Colors.amber,

                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                          image: AssetImage('assets/images/Female.png'),
                          height: 90,
                          width: 90,
                        ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.amber : Colors.grey,

                          ),
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
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900
                            ),
                          ),

                        ],
                      ),
                      Slider(
                        value: height,
                        max: 260.0,
                        min: 60.0,
                        onChanged: (value){
                         setState(() {
                           height = value;
                         });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  heroTag: 'Weight --',
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove
                                  ),
                                ),
                                FloatingActionButton(
                                  mini: true,
                                  heroTag: 'Weight ++',
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(
                                      Icons.add
                                  ),
                                ),
                              ],
                            ),


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
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  heroTag: 'age--',
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(
                                      Icons.remove
                                  ),
                                ),
                                FloatingActionButton(
                                  mini: true,
                                  heroTag: 'age++',
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(
                                      Icons.add
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.amber,
              child: MaterialButton(
                height: 60,
                onPressed: (){
                  double result = weight / pow(height/100, 2);

                  Navigator.push(context,
                      MaterialPageRoute(
                      builder: (context) => BMI_result(
                        result: result,
                        isMale: isMale,
                        age: age,

                      ),
                  )
                  );

                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.black,

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
