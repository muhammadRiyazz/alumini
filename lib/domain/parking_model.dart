import 'dart:convert';

class ParkingData {
  final String status;
  final List<YearParking> data;

  ParkingData({
    required this.status,
    required this.data,
  });

  // Factory method to create a ParkingData object from JSON
  factory ParkingData.fromJson(Map<String, dynamic> json) {
    return ParkingData(
      status: json['status'] as String,
      data: (json['data'] as List)
          .map((item) => YearParking.fromJson(item))
          .toList(),
    );
  }

  // Method to convert ParkingData object to JSON
  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'data': data.map((item) => item.toJson()).toList(),
    };
  }
}

class YearParking {
  final String year;
  final String parking;

  YearParking({
    required this.year,
    required this.parking,
  });

  // Factory method to create a YearParking object from JSON
  factory YearParking.fromJson(Map<String, dynamic> json) {
    return YearParking(
      year: json['year'] as String,
      parking: json['parking'] as String,
    );
  }

  // Method to convert YearParking object to JSON
  Map<String, dynamic> toJson() {
    return {
      'year': year,
      'parking': parking,
    };
  }
}class MealResponse {
  final String status;
  final List<Meal> data;

  MealResponse({required this.status, required this.data});

  // Factory method to create an instance from JSON
  factory MealResponse.fromJson(Map<String, dynamic> json) {
    return MealResponse(
      status: json['status'] as String,
      data: (json['data'] as List)
          .map((mealJson) => Meal.fromJson(mealJson))
          .toList(),
    );
  }

  // Convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'data': data.map((meal) => meal.toJson()).toList(),
    };
  }
}

class Meal {
  final String meal;
  final String price;

  Meal({required this.meal, required this.price});

  // Factory method to create an instance from JSON
  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      meal: json['meal'] as String,
      price: json['price'] as String,
    );
  }

  // Convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'meal': meal,
      'price': price,
    };
  }
}
