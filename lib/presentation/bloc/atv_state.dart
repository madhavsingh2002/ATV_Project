
import 'package:flutter_firebase_bloc/data/models/atv.dart';

abstract class AtvState {}

class AtvsLoading extends AtvState {}

class ATVLoaded extends AtvState {
  final List<ATV> atvs;
  ATVLoaded(this.atvs);
}

class AtvError extends AtvState {
  final String message;
  AtvError(this.message);
}