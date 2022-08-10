import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
abstract class Employee implements _$Employee {
  const Employee._();
  const factory Employee({
    required int id,
    required String imageUrl,
    required String firstName,
    required String lastName,
    required String email,
    required String contactNumber,
    required int age,
    required String dob,
    required double salary,
    required String address,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
}