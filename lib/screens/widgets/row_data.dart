import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:spiderweb/models/employee/employee_model.dart';
import 'package:spiderweb/models/error/app_error.dart';
import 'package:spiderweb/models/product/product_model.dart';
import 'package:spiderweb/models/singleData/single_data_model.dart';
import 'package:spiderweb/models/singleDataWithID/single_data_withid_model.dart';
import 'package:spiderweb/screens/widgets/employee_card.dart';
import 'package:spiderweb/screens/widgets/id_data_card.dart';
import 'package:spiderweb/screens/widgets/product_card.dart';

import 'image_card.dart';

class RowWidget extends StatelessWidget {
  final Either<AppError, List> data;
  const RowWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 5.5,
        child: data.fold(
          (l) => Center(child: Text(l.type.message)),
          (r) => ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              switch (r.runtimeType.toString()) {
                case "List<Employee>":
                  return EmployeeCard(
                    employee: r[index] as Employee,
                  );
                case "List<SingleData>":
                  return IdDataCard(otherData: r[index] as SingleData);
                case "List<SingleDataWithID>":
                  return IdDataCard(data: r[index] as SingleDataWithID);
                case "List<String>":
                  return ImageCard(
                    image: r[index].toString(),
                  );
                case "List<Product>":
                  return ProductCard(product: r[index] as Product);
                default:
                  return const SizedBox.shrink();
              }
            }),
            itemCount: r.length,
          ),
        ));
  }
}
