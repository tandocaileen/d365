import 'package:d365_integration/ui/common/ui_helpers.dart';
import 'package:d365_integration/ui/views/home/home_view.form.dart';
import 'package:d365_integration/ui/views/home/home_viewmodel.dart';
import 'package:d365_integration/ui/widgets/root/view_with_header/view_with_header_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(
  fields: [
    FormTextField(
      name: 'apiKey',
      validator: ApiRequestValidators.validateApiKey,
    ),
    FormTextField(
      name: 'dataAreaId',
      validator: ApiRequestValidators.validateDataAreaId,
    ),
    FormTextField(
      name: 'top',
      validator: ApiRequestValidators.validateTop,
    ),
    FormTextField(
      name: 'skip',
      validator: ApiRequestValidators.validateSkip,
    ),
  ],
)
class HomeView extends StackedView<HomeViewModel> with $HomeView {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return ViewWithHeaderTitle(
      isScrollable: true,
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Form(
            child: Column(
              children: [
                verticalSpaceMedium,
                // API Key field
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  controller: apiKeyController,
                  decoration: const InputDecoration(labelText: 'API Key'),
                  validator: ApiRequestValidators.validateApiKey,
                ),
                verticalSpaceMedium,

                // Data Area ID field
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  controller: dataAreaIdController,
                  decoration: const InputDecoration(labelText: 'Data Area ID'),
                  validator: ApiRequestValidators.validateDataAreaId,
                ),
                verticalSpaceMedium,

                // Cross Company checkbox
                CheckboxListTile(
                  title: const Text('Cross Company'),
                  value: viewModel.crossCompany,
                  onChanged: (value) {
                    viewModel.setCrossCompany(value ?? false);
                  },
                ),
                verticalSpaceMedium,

                // Top field
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  controller: topController,
                  decoration: const InputDecoration(labelText: 'Top'),
                  validator: ApiRequestValidators.validateTop,
                  keyboardType: TextInputType.number,
                ),
                verticalSpaceMedium,

                // Skip field
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  controller: skipController,
                  decoration: const InputDecoration(labelText: 'Skip'),
                  validator: ApiRequestValidators.validateSkip,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),

                // Export Button
                ElevatedButton(
                  onPressed: viewModel.isFormValid
                      ? () async {
                          await viewModel.exportToExcel();
                          viewModel.clearForm();
                        }
                      : null,
                  child: viewModel.isBusy
                      ? const CircularProgressIndicator()
                      : const Text('Export To Excel'),
                ),
              ],
            ),
          ),
        ),
      ),
      title: 'CustomersV3',
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }
}

class ApiRequestValidators {
  static String? validateApiKey(String? value) {
    if (value == null || value.isEmpty) {
      return 'API Key cannot be empty';
    }
    return null;
  }

  static String? validateDataAreaId(String? value) {
    if (value == null || value.isEmpty) {
      return 'Data Area ID cannot be empty';
    }
    return null;
  }

  static String? validateTop(String? value) {
    if (value == null || value.isEmpty) {
      return 'Top value cannot be empty';
    }
    if (int.tryParse(value) == null) {
      return 'Top value must be an integer';
    }
    return null;
  }

  static String? validateSkip(String? value) {
    if (value == null || value.isEmpty) {
      return 'Skip value cannot be empty';
    }
    if (int.tryParse(value) == null) {
      return 'Skip value must be an integer';
    }
    return null;
  }
}
