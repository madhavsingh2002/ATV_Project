import 'package:flutter_firebase_bloc/data/models/atv.dart';
import 'package:flutter_firebase_bloc/data/datasources/firebase_atv_data_source.dart';
import 'package:flutter_firebase_bloc/domain/repositories/atv_repository.dart';

class AtvRepositoryImpl implements AtvRepository{
  final FirebaseAtvDataSource dataSource;
  AtvRepositoryImpl(this.dataSource);
  @override  
  Future<List<ATV>> fetchATVs(){
    return dataSource.getATVs();
  }
}