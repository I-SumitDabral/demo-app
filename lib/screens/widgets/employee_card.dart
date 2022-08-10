import 'package:flutter/material.dart';
import 'package:spiderweb/models/employee/employee_model.dart';

class EmployeeCard extends StatelessWidget {
  final Employee employee;
  const EmployeeCard({Key? key, required this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(10)),
        height: 60,
        width: MediaQuery.of(context).size.width / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              employee.imageUrl,
              height: 40,
              width: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${employee.firstName}\t${employee.lastName}"),
            )
          ],
        ),
      ),
    );
  }
}
