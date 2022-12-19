import 'package:flutter/material.dart';

class WhatIs9Matrix extends StatelessWidget {
  const WhatIs9Matrix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _WhatIs9Matrix(),
    );
  }
}

class _WhatIs9Matrix extends StatefulWidget {
  const _WhatIs9Matrix({super.key});

  @override
  State<_WhatIs9Matrix> createState() => __WhatIs9MatrixState();
}

class __WhatIs9MatrixState extends State<_WhatIs9Matrix> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            image: AssetImage('images/9_box-bg.png'),
            width: 400,
            height: 400,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              padding: EdgeInsets.all(10),
              width: 320,
              height: 350,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle, border: Border.all(width: 2)),
              child: Text(
                "The 9 Box Matrix is a well-known talent management tool that assists the organization to classify employees according to their Performance and Potential. \nIt provides a framework that helps to manage all employees in an organization, identify the top talents, and highlight the fewer ones. \nAs such, organizations can use it for succession planning purposes. \nOne of the shortcomings of using this tool is that the data is considered as granted or as fact. \nNot Updating the data could also affect the use of the information. \nKeep in mind, it is a very helpful tool if used wisely.",
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    letterSpacing: 0.0,
                    wordSpacing: 2.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
