import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:spiderweb/constants/app_api.dart';
import 'package:spiderweb/models/employee/employee_model.dart';
import 'package:spiderweb/models/error/app_error.dart';
import 'package:spiderweb/models/product/product_model.dart';
import 'package:spiderweb/models/singleData/single_data_model.dart';
import 'package:spiderweb/models/singleDataWithID/single_data_withid_model.dart';
import 'package:spiderweb/services/api_service.dart';

abstract class DataService {
  Future<Either<AppError, List<Employee>>> fetchEmployeeList();
  Future<Either<AppError, List<Product>>> fetchProductList();
  Future<Either<AppError, List<String>>> fetchImageList();
  Future<Either<AppError, List<SingleDataWithID>>>
      fetchSingledataWithoutIdList();
  Future<Either<AppError, List<SingleData>>> fetchSingledataList();
}

@LazySingleton(as: DataService)
class DataServiceImpl implements DataService {
  final ApiService apiService;

  DataServiceImpl(this.apiService);

  @override
  Future<Either<AppError, List<Employee>>> fetchEmployeeList() async {
    try {
      final response = await apiService.get(AppApi.employee);
      if (response == null) {
        return left(AppError(AppErrorType.nullFound));
      }
      final parsedResponse =
          response.map((element) => Employee.fromJson(element)).toList();
      return right(parsedResponse);
    } catch (_) {
      return left(AppError(AppErrorType.empty));
    }
  }

  @override
  Future<Either<AppError, List<String>>> fetchImageList() async {
    try {
      final response = await apiService.get(AppApi.imageList);
      if (response == null) {
        return left(AppError(AppErrorType.nullFound));
      }
      final parsedResponse =
          response.map((element) => element.toString()).toList();
      return right(parsedResponse);
    } catch (_) {
      return left(AppError(AppErrorType.empty));
    }
  }

  @override
  Future<Either<AppError, List<Product>>> fetchProductList() async {
    try {
      final response = await apiService.get(AppApi.product);
      if (response == null) {
        return left(AppError(AppErrorType.nullFound));
      }
      final List<Product> parsedResponse =
          response.map((element) => Product.fromJson(element)).toList();
      return right(parsedResponse);
    } catch (_) {
      return left(AppError(AppErrorType.empty));
    }
  }

  @override
  Future<Either<AppError, List<SingleData>>> fetchSingledataList() async {
    try {
      final response = await apiService.get(AppApi.singledataWithoutId);
      if (response == null) {
        return left(AppError(AppErrorType.nullFound));
      }
      final List<SingleData> parsedResponse =
          response.map((element) => SingleData.fromJson(element)).toList();
      return right(parsedResponse);
    } catch (_) {
      return left(AppError(AppErrorType.empty));
    }
  }

  @override
  Future<Either<AppError, List<SingleDataWithID>>>
      fetchSingledataWithoutIdList() async {
    try {
      final response = await apiService.get(AppApi.singledataWithId);
      if (response == null) {
        return left(AppError(AppErrorType.nullFound));
      }
      final List<SingleDataWithID> parsedResponse = response
          .map((element) => SingleDataWithID.fromJson(element))
          .toList();
      return right(parsedResponse);
    } catch (_) {
      return left(AppError(AppErrorType.empty));
    }
  }
}
