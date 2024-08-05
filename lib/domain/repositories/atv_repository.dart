import 'package:flutter_firebase_bloc/data/models/atv.dart';

abstract class AtvRepository{
  Future<List<ATV>> fetchATVs();
}