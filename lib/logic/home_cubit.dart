import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spiderweb/services/data_service.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final DataService _dataService;
  HomeCubit(this._dataService) : super(const HomeState.initial());
  Future<void> fetchAllApis() async {
    final responseList = await Future.wait([
      _dataService.fetchEmployeeList(),
      _dataService.fetchProductList(),
      _dataService.fetchImageList(),
      _dataService.fetchSingledataList(),
      _dataService.fetchSingledataWithoutIdList()
    ]);

    if (responseList.any((element) => element.isLeft())) {
      emit(HomeState.error(responseList));
    } else {
      emit(HomeState.success(responseList));
    }
  }
}
