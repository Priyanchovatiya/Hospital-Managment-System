import 'package:cloud_firestore/cloud_firestore.dart';

class PatientModel {
  final int phone;
  final double bp;
  final double weight;
  final String add;
  final String name;
  final String drName;
  final String gender;
  final String disease;
  final String department;

  PatientModel(
      {required this.phone,
      required this.name,
      required this.add,
      required this.drName,
      required this.gender,
      required this.bp,
      required this.department,
      required this.disease,
      required this.weight});

  Map<String, dynamic> toMap() {
    return {
      'phoneno': phone,
      'name': name,
      'drName': drName,
      'address': add,
      'bp': bp,
      'gender': gender,
      'department': department,
      'disease': disease,
      'weight': weight,
    };
  }

  PatientModel.fromMap(Map<String, dynamic> map)
      : phone = map['phoneno'] ?? 0,
        name = map['name'] ?? false,
        drName = map['drName'] ?? '',
        bp = map['bp'] ?? '',
        gender = map['gender'] ?? '',
        department = map['department'] ?? '',
        disease = map['disease'] ?? '',
        weight = map['weight'] ?? '',
        add = map['address'];
}
