import 'package:flutter/material.dart';
import 'package:internetchecking/testing2.dart';
import 'package:internetchecking/testing5.dart';
import 'package:internetchecking/testing7.dart';

class Testing3 extends StatelessWidget {
  const Testing3({super.key});

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
                    MaterialPageRoute(builder: (context) => Testing5()));
                },
                child: Text(
                  "Page 2",
                )),
            ElevatedButton(
                onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Testing7()));
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