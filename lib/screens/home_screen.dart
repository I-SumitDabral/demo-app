import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spiderweb/logic/home_cubit.dart';
import 'package:spiderweb/screens/widgets/row_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeCubit>().fetchAllApis();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) => state.when(
                initial: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                success: (dataList) => Column(
                  children: dataList.map((e) => RowWidget(data: e)).toList(),
                ),
                error: (dataList) => Column(
                  children: dataList.map((e) => RowWidget(data: e)).toList(),
                ),
              )),
    ));
  }
}
