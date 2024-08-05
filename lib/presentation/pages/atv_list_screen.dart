import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_bloc/presentation/bloc/atv_bloc.dart';
import 'package:flutter_firebase_bloc/presentation/bloc/atv_state.dart';
import 'package:flutter_firebase_bloc/presentation/widgets/atv_card.dart';

class AtvListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your ATV'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: BlocBuilder<AtvBloc, AtvState>(
        builder: (context, state) {
          if (state is AtvsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ATVLoaded) {
            return 
            // SingleChildScrollView(child: 
            ListView.builder(
              itemCount: state.atvs.length,
              itemBuilder: (context, index) {
                return AtvCard(atv: state.atvs[index]);
              },
            );
            // );
            
          } else if (state is AtvError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: Text('Unexpected state'));
          }
        },
      ),
    );
  }
}
