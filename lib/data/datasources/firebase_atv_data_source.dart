import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_bloc/data/models/atv.dart';

class FirebaseAtvDataSource {
  final FirebaseFirestore firestore;
  FirebaseAtvDataSource({required this.firestore});
  Future<List<ATV>> getATVs() async{
     var snapshot = await firestore.collection('atv').get();
    return snapshot.docs.map((doc) => ATV.fromMap(doc.data())).toList(); 
  }
}