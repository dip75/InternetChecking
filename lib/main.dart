import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internetchecking/Bloc/internet_checker_cubit.dart';
import 'package:internetchecking/Bloc/internet_checker_state.dart';
import 'package:internetchecking/Bloc/no_internet.dart';
import 'package:internetchecking/testing1.dart';

void main() {
  runApp(
    BlocProvider(create: (_)=> InternetCheckerCubit(),
    
    child: MyApp(),
    ));
  
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  late InternetCheckerCubit internetCheckerCubit;

  @override
  void initState() {
    internetCheckerCubit = context.read<InternetCheckerCubit>();
    internetCheckerCubit.checkConnectivity();
    internetCheckerCubit.trackConnectivityChange();
    super.initState();
  }

  @override
  void dispose() {
    internetCheckerCubit.dispose();
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCheckerCubit, InternetStatus>(
      builder: (context, state) {
        return    state.status == ConnectivityStatus.connected ? 
        
        MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Testing1(),
        ) : 
          MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const NoInternet(),
        ) ;
      },
    );
  }
}
