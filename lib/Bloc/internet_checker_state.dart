import 'package:equatable/equatable.dart';


// sealed class InternetCheckerState extends Equatable {
//   const InternetCheckerState();

//   @override
//   List<Object> get props => [];
// }

// final class InternetCheckerInitial extends InternetCheckerState {}


enum ConnectivityStatus { connected, disconnected }

class InternetStatus extends Equatable {
  final ConnectivityStatus status;

  const InternetStatus(this.status);

  @override
  List<Object> get props => [status];
}