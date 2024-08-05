import 'package:flutter_firebase_bloc/data/models/atv.dart';
import 'package:flutter_firebase_bloc/domain/repositories/atv_repository.dart';

class GetAtvs{
  final AtvRepository repository;
  GetAtvs(this.repository);
  Future<List<ATV>> call() async{
    return await repository.fetchATVs();
  }
}