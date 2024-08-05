import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_bloc/data/datasources/firebase_atv_data_source.dart';
import 'package:flutter_firebase_bloc/data/repositories/atv_repository_impl.dart';
import 'package:flutter_firebase_bloc/domain/repositories/atv_repository.dart';
import 'package:flutter_firebase_bloc/domain/usecases/get_atvs.dart';
import 'package:flutter_firebase_bloc/presentation/bloc/atv_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initInjection(){
  try{
    getIt.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
    getIt.registerLazySingleton<FirebaseAtvDataSource>(
            () => FirebaseAtvDataSource(firestore: getIt<FirebaseFirestore>())
    );
    getIt.registerLazySingleton<AtvRepository>(
            () => AtvRepositoryImpl(getIt<FirebaseAtvDataSource>())
    );
    getIt.registerLazySingleton<GetAtvs>(
            () => GetAtvs(getIt<AtvRepository>())
    );
    getIt.registerFactory(() => AtvBloc(getAtvs: getIt<GetAtvs>()));

  } catch (e){
    throw e;
  }
}