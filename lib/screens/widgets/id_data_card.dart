import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spiderweb/models/singleData/single_data_model.dart';
import 'package:spiderweb/models/singleDataWithID/single_data_withid_model.dart';

class IdDataCard extends StatelessWidget {
  final SingleDataWithID? data;
  final SingleData? otherData;
  const IdDataCard({Key? key, this.data, this.otherData}) : super(key: key);

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
            if (data != null) Text(data!.id.toString()),
            Text(data?.value ?? otherData!.value),
          ],
        ),
      ),
    );
  }
}
