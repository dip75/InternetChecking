import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internetchecking/Bloc/internet_checker_state.dart';



class InternetCheckerCubit extends Cubit<InternetStatus> {
  InternetCheckerCubit()
      : super(const InternetStatus(ConnectivityStatus.connected));

  void checkConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    _updateConnectivityStatus(connectivityResult);
  }

  void _updateConnectivityStatus(List<ConnectivityResult> results) {
    if (results.contains(ConnectivityResult.none)) {
      emit(const InternetStatus(ConnectivityStatus.disconnected));
    } else {
      emit(const InternetStatus(ConnectivityStatus.connected));
    }
  }

  late StreamSubscription<List<ConnectivityResult>?> _subscription;

  void trackConnectivityChange() {
    _subscription = Connectivity().onConnectivityChanged.listen((results) {
      _updateConnectivityStatus(results);
    });
  }

  void dispose() {
    _subscription.cancel();
  }
}
