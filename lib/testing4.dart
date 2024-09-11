import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internetchecking/Bloc/internet_checker_cubit.dart';
import 'package:internetchecking/Bloc/internet_checker_state.dart';
import 'package:internetchecking/Bloc/no_internet.dart';

class Testing4 extends StatelessWidget {
  const Testing4({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCheckerCubit, InternetStatus>(
      builder: (context, state) {
      return  state.status == ConnectivityStatus.connected
            ?  Scaffold(
                body: Center(
                  child: Text("This is Testing Internet 4"),
                ),
              )
            : Scaffold(
              body: NoInternet(),
            );
      },
     
    );
  }
}
