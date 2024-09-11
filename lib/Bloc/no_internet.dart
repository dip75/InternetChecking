
import 'package:flutter/material.dart';


class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Icon(Icons.wifi_off,
            size: 40,
            color: Colors.grey,
            ),
            SizedBox(height: 20,),
           const Text(
              "Not Connected",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30
              ),
            ),
          ],
        ),
      ),
    );
  }
}