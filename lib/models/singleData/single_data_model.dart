import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_data_model.freezed.dart';
part 'single_data_model.g.dart';

@freezed
abstract class SingleData implements _$SingleData {
  const SingleData._();
  const factory SingleData({
    required String value,
  }) = _SingleData;

  factory SingleData.fromJson(Map<String, dynamic> json) =>
      _$SingleDataFromJson(json);
}
