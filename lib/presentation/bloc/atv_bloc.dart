import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_bloc/domain/usecases/get_atvs.dart';
import 'package:flutter_firebase_bloc/presentation/bloc/atv_event.dart';
import 'package:flutter_firebase_bloc/presentation/bloc/atv_state.dart';

class AtvBloc extends Bloc<AtvEvent, AtvState> {
  final GetAtvs getAtvs;

  AtvBloc({required this.getAtvs}) : super(AtvsLoading()) {
    on<LoadAtvs>((event, emit) async {
      emit(AtvsLoading());
      try{
        final cars = await getAtvs.call();
        emit(ATVLoaded(cars));
      }catch(e){
        emit(AtvError(e.toString()));
      }
    });
  }
}