class ATV{
  final String model;
  final int distance;
  final int fuelCapacity;
  final int pricePerHour;
  ATV({required this.model, required this.distance, required this.fuelCapacity, required this.pricePerHour});
  factory ATV.fromMap(Map<String, dynamic> map){
    return ATV(
      model: map['model'],
      distance: map['distance'],
      fuelCapacity: map['fuelCapcity'],
      pricePerHour: map['pricePerHour']
    );
  }
}