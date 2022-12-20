import 'package:flutter/material.dart';

class AboutTool extends StatelessWidget {
  const AboutTool({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        home: _AboutTool());
  }
}

class _AboutTool extends StatefulWidget {
  const _AboutTool({super.key});

  @override
  State<_AboutTool> createState() => __AboutToolState();
}

class __AboutToolState extends State<_AboutTool> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 320,
                height: 350,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all(width: 2)),
                child: Text(
                  "The 9 Box Matrix tool will assist line managers to minimize personal bias in classifying employees where many organizations rely on the line manager's judgment only. The tool consists of 10 questions, and after answering the questions, the applicable box will be highlighted. Someone might say that the bias is still there, as answering the questions is done by the line manager. This is correct, and I aim to reduce the bias to the minimum. So, the tool will not provide 100% accuracy. Also, some line managers find it challenging to assess the potentiality. So once more, no need to provide many guidelines or definitions, just answer the questions.",
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
        ));
  }
}
