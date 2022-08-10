import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_data_withid_model.freezed.dart';
part 'single_data_withid_model.g.dart';

@freezed
abstract class SingleDataWithID implements _$SingleDataWithID {
  const SingleDataWithID._();
  const factory SingleDataWithID({
    required String value,
    required int id,
  }) = _SingleDataWithID;

  factory SingleDataWithID.fromJson(Map<String, dynamic> json) =>
      _$SingleDataWithIDFromJson(json);
}
