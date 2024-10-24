import 'package:d365_integration/app/app.locator.dart';
import 'package:d365_integration/models/customers_response_model.dart';
import 'package:d365_integration/models/value_model.dart';
import 'package:d365_integration/services/d365/d365_service.dart';
import 'package:d365_integration/ui/common/app_strings.dart';
import 'package:d365_integration/ui/views/home/home_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:excel/excel.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FutureViewModel
    with FormStateHelper
    implements FormViewModel {
  final D365Service _d365service = locator<D365Service>();
  final BottomSheetService _bottomSheetService = locator<BottomSheetService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  bool crossCompany = false;

  CustomersResponse customersData = CustomersResponse();

  void setCrossCompany(bool value) {
    crossCompany = value;
    notifyListeners();
  }

  Future<void> submitForm() async {
    try {
      customersData = await _d365service.fetchCustomersV3(
        apiKey: apiKeyValue ?? '',
        dataAreaId: dataAreaIdValue ?? '',
        crossCompany: crossCompany,
        top: int.parse(topValue ?? '0'),
        skip: int.parse(skipValue ?? '0'),
      );

      // Call to refresh UI if necessary
      notifyListeners();
    } catch (e) {
      // Handle the error
      _snackbarService.showSnackbar(
          message: 'Oops! something went wrong; try again');
      // Optionally, you can add more error handling or UI feedback here
    }
  }

  Future<void> exportToExcel() async {
    setBusy(true);
    try {
      customersData = await _d365service.fetchCustomersV3(
        apiKey: apiKeyValue ?? '',
        dataAreaId: dataAreaIdValue ?? '',
        crossCompany: crossCompany,
        top: int.parse(topValue ?? '0'),
        skip: int.parse(skipValue ?? '0'),
      );

      // Call to refresh UI if necessary
      notifyListeners();
      final excel = Excel.createExcel();
      final sheet = excel['Sheet1'];

      // Adding headers to the Excel sheet
      sheet.appendRow(
          columnTitles.map((title) => TextCellValue(title)).toList());

      // Adding customer data
      for (Value customer in customersData.value ?? []) {
        List<TextCellValue> row = [];

        // Add values to the row based on the defined column titles
        for (var title in columnTitles) {
          var fieldValue = customer.getField(title);
          //log('$title: $fieldValue');
          row.add(TextCellValue(fieldValue.toString()));
        }

        sheet.appendRow(row);
      }
      excel.save(fileName: 'CUSTOMERS V3.xlsx');
      setBusy(false);
      _bottomSheetService.showBottomSheet(title: 'Excel file downloaded!');
    } catch (e) {
      // Handle the error
      setBusy(false);
      _snackbarService.showSnackbar(
          message: 'Oops! something went wrong; try again');
      // Optionally, you can add more error handling or UI feedback here
    }
  }

  @override
  Future<void> futureToRun() async {
    // TODO: implement futureToRun;
  }
}
