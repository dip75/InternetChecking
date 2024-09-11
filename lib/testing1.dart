import 'package:flutter/material.dart';
import 'package:internetchecking/Testing3.dart';
import 'package:internetchecking/testing2.dart';
import 'package:internetchecking/testing4.dart';

class Testing1 extends StatelessWidget {
  const Testing1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Testing2()));
              },
              child: Text("Page 1"),
            ),
            ElevatedButton(
                onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Testing3()));
                },
                child: Text(
                  "Page 2",
                )),
            ElevatedButton(
                onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Testing4()));
                },
                child: Text(
                  "Page 3",
                ))
          ],
        ),
      ),
    );
  }
}
