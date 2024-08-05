import 'package:flutter/material.dart';
import 'package:flutter_firebase_bloc/data/models/atv.dart';
import 'package:flutter_firebase_bloc/presentation/pages/atv_details.dart';

class AtvCard extends StatelessWidget {
  final ATV atv;
  AtvCard({super.key, required this.atv});
  @override
  Widget build(BuildContext context) {
    return 
     GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AtvDetails(atv: atv))
        );
      },
      child: 
      Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)
          ]),
      child: 
      Column(
        children: [
          Image.asset('assets/onboardingim.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                atv.model,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text('Price: \$${atv.pricePerHour.toStringAsFixed(2)}/h',
                  style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(Icons.oil_barrel),
                Text('Capacity:  ${atv.fuelCapacity.toStringAsFixed(0)}L')
              ]),
              Row(children: [
                Icon(Icons.directions),
                Text('Range: ${atv.distance.toStringAsFixed(0)}km')
              ]),
            ],
          ),
        ],
      ),
    )
     );
    
  }
}
