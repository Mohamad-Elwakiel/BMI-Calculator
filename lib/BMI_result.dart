// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_result extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  BMI_result({
    required this.result,
    required this.isMale,
    required this.age,


});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI result'
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);

          },
          icon: Icon(
              Icons.arrow_back
          ),
        ),

      ),
      body: Container(
        color: Colors.black54,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Gender: ',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image(
                              image: AssetImage(isMale ? 'assets/images/Male.png' : 'assets/images/Female.png'),
                              height: 90,
                              width: 90,
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
                        children: [
                          Text(
                            'Age:',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
              ),
              child: Center(
                child: Text(
                  'Result: ${result.round()}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

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
