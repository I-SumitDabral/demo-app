part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.success(List<dynamic> dataList, ) = _Success;
  const factory HomeState.error(List<dynamic> dataList, ) = _Error;
}
