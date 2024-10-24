import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'd365_client.g.dart';

@RestApi(baseUrl: 'https://skygo-d365-integration.azurewebsites.net/')
abstract class D365Client {
  factory D365Client(Dio dio, {String baseUrl}) = _D365Client;

  // Fetch CustomersV3 data
  @GET('/D365/IntegrationPOC/CustomersV3')
  Future<dynamic> getCustomersV3(
    @Query('apiKey') String apiKey,
    @Query('dataAreaId') String dataAreaId,
    @Query('crossCompany') bool crossCompany,
    @Query('top') int top,
    @Query('skip') int skip,
    @Query('select') String select,
    @Query('CustomerAccount') String customerAccount,
  );

  // Fetch WarehouseInventoryStatusesOnHand data
  @GET('/D365/IntegrationPOC/WarehouseInventoryStatusesOnHand')
  Future<dynamic> getWarehouseInventoryStatuses(
    @Query('apiKey') String apiKey,
    @Query('dataAreaId') String dataAreaId,
    @Query('crossCompany') bool crossCompany,
    @Query('top') int top,
    @Query('skip') int skip,
    @Query('select') String select,
  );
}
