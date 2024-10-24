import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'd365_client.dart';

@LazySingleton()
class D365Service {
  final D365Client _d365Client = D365Client(Dio());

  Future<dynamic> fetchCustomersV3({
    required String apiKey,
    String dataAreaId = 'USMF',
    bool crossCompany = true,
    int top = 10,
    int skip = 0,
    String select = '',
    String customerAccount = '',
  }) async {
    try {
      final response = await _d365Client.getCustomersV3(
        apiKey,
        dataAreaId,
        crossCompany,
        top,
        skip,
        select,
        customerAccount,
      );
      return response;
    } on DioException catch (e) {
      log(e.toString());
      throw Exception('Failed to fetch CustomersV3 data');
    }
  }

  Future<dynamic> fetchWarehouseInventoryStatuses({
    required String apiKey,
    String dataAreaId = 'USMF',
    bool crossCompany = true,
    int top = 10,
    int skip = 0,
    String select = '',
  }) async {
    try {
      final response = await _d365Client.getWarehouseInventoryStatuses(
        apiKey,
        dataAreaId,
        crossCompany,
        top,
        skip,
        select,
      );
      return response;
    } on DioException catch (e) {
      log(e.toString());
      throw Exception('Failed to fetch WarehouseInventoryStatuses data');
    }
  }
}
