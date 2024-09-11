import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internetchecking/Bloc/internet_checker_cubit.dart';
import 'package:internetchecking/Bloc/internet_checker_state.dart';
import 'package:internetchecking/Bloc/no_internet.dart';

class Testing5 extends StatelessWidget {
  const Testing5({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCheckerCubit, InternetStatus>(
      builder: (context, state) {
      return  state.status == ConnectivityStatus.connected
            ?  Scaffold(
                body: Center(
                  child: Text("This is Testing Internet 5"),
                ),
              )
            : Scaffold(
              body: NoInternet(),
            );
      },
     
    );
  }
}
