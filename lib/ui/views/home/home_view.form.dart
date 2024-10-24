// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:d365_integration/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String ApiKeyValueKey = 'apiKey';
const String DataAreaIdValueKey = 'dataAreaId';
const String TopValueKey = 'top';
const String SkipValueKey = 'skip';

final Map<String, TextEditingController> _HomeViewTextEditingControllers = {};

final Map<String, FocusNode> _HomeViewFocusNodes = {};

final Map<String, String? Function(String?)?> _HomeViewTextValidations = {
  ApiKeyValueKey: ApiRequestValidators.validateApiKey,
  DataAreaIdValueKey: ApiRequestValidators.validateDataAreaId,
  TopValueKey: ApiRequestValidators.validateTop,
  SkipValueKey: ApiRequestValidators.validateSkip,
};

mixin $HomeView {
  TextEditingController get apiKeyController =>
      _getFormTextEditingController(ApiKeyValueKey);
  TextEditingController get dataAreaIdController =>
      _getFormTextEditingController(DataAreaIdValueKey);
  TextEditingController get topController =>
      _getFormTextEditingController(TopValueKey);
  TextEditingController get skipController =>
      _getFormTextEditingController(SkipValueKey);

  FocusNode get apiKeyFocusNode => _getFormFocusNode(ApiKeyValueKey);
  FocusNode get dataAreaIdFocusNode => _getFormFocusNode(DataAreaIdValueKey);
  FocusNode get topFocusNode => _getFormFocusNode(TopValueKey);
  FocusNode get skipFocusNode => _getFormFocusNode(SkipValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_HomeViewTextEditingControllers.containsKey(key)) {
      return _HomeViewTextEditingControllers[key]!;
    }

    _HomeViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _HomeViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_HomeViewFocusNodes.containsKey(key)) {
      return _HomeViewFocusNodes[key]!;
    }
    _HomeViewFocusNodes[key] = FocusNode();
    return _HomeViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    apiKeyController.addListener(() => _updateFormData(model));
    dataAreaIdController.addListener(() => _updateFormData(model));
    topController.addListener(() => _updateFormData(model));
    skipController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    apiKeyController.addListener(() => _updateFormData(model));
    dataAreaIdController.addListener(() => _updateFormData(model));
    topController.addListener(() => _updateFormData(model));
    skipController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          ApiKeyValueKey: apiKeyController.text,
          DataAreaIdValueKey: dataAreaIdController.text,
          TopValueKey: topController.text,
          SkipValueKey: skipController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _HomeViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _HomeViewFocusNodes.values) {
      focusNode.dispose();
    }

    _HomeViewTextEditingControllers.clear();
    _HomeViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get apiKeyValue => this.formValueMap[ApiKeyValueKey] as String?;
  String? get dataAreaIdValue =>
      this.formValueMap[DataAreaIdValueKey] as String?;
  String? get topValue => this.formValueMap[TopValueKey] as String?;
  String? get skipValue => this.formValueMap[SkipValueKey] as String?;

  set apiKeyValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ApiKeyValueKey: value}),
    );

    if (_HomeViewTextEditingControllers.containsKey(ApiKeyValueKey)) {
      _HomeViewTextEditingControllers[ApiKeyValueKey]?.text = value ?? '';
    }
  }

  set dataAreaIdValue(String? value) {
    this.setData(
      this.formValueMap..addAll({DataAreaIdValueKey: value}),
    );

    if (_HomeViewTextEditingControllers.containsKey(DataAreaIdValueKey)) {
      _HomeViewTextEditingControllers[DataAreaIdValueKey]?.text = value ?? '';
    }
  }

  set topValue(String? value) {
    this.setData(
      this.formValueMap..addAll({TopValueKey: value}),
    );

    if (_HomeViewTextEditingControllers.containsKey(TopValueKey)) {
      _HomeViewTextEditingControllers[TopValueKey]?.text = value ?? '';
    }
  }

  set skipValue(String? value) {
    this.setData(
      this.formValueMap..addAll({SkipValueKey: value}),
    );

    if (_HomeViewTextEditingControllers.containsKey(SkipValueKey)) {
      _HomeViewTextEditingControllers[SkipValueKey]?.text = value ?? '';
    }
  }

  bool get hasApiKey =>
      this.formValueMap.containsKey(ApiKeyValueKey) &&
      (apiKeyValue?.isNotEmpty ?? false);
  bool get hasDataAreaId =>
      this.formValueMap.containsKey(DataAreaIdValueKey) &&
      (dataAreaIdValue?.isNotEmpty ?? false);
  bool get hasTop =>
      this.formValueMap.containsKey(TopValueKey) &&
      (topValue?.isNotEmpty ?? false);
  bool get hasSkip =>
      this.formValueMap.containsKey(SkipValueKey) &&
      (skipValue?.isNotEmpty ?? false);

  bool get hasApiKeyValidationMessage =>
      this.fieldsValidationMessages[ApiKeyValueKey]?.isNotEmpty ?? false;
  bool get hasDataAreaIdValidationMessage =>
      this.fieldsValidationMessages[DataAreaIdValueKey]?.isNotEmpty ?? false;
  bool get hasTopValidationMessage =>
      this.fieldsValidationMessages[TopValueKey]?.isNotEmpty ?? false;
  bool get hasSkipValidationMessage =>
      this.fieldsValidationMessages[SkipValueKey]?.isNotEmpty ?? false;

  String? get apiKeyValidationMessage =>
      this.fieldsValidationMessages[ApiKeyValueKey];
  String? get dataAreaIdValidationMessage =>
      this.fieldsValidationMessages[DataAreaIdValueKey];
  String? get topValidationMessage =>
      this.fieldsValidationMessages[TopValueKey];
  String? get skipValidationMessage =>
      this.fieldsValidationMessages[SkipValueKey];
}

extension Methods on FormStateHelper {
  setApiKeyValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ApiKeyValueKey] = validationMessage;
  setDataAreaIdValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DataAreaIdValueKey] = validationMessage;
  setTopValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TopValueKey] = validationMessage;
  setSkipValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SkipValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    apiKeyValue = '';
    dataAreaIdValue = '';
    topValue = '';
    skipValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      ApiKeyValueKey: getValidationMessage(ApiKeyValueKey),
      DataAreaIdValueKey: getValidationMessage(DataAreaIdValueKey),
      TopValueKey: getValidationMessage(TopValueKey),
      SkipValueKey: getValidationMessage(SkipValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _HomeViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _HomeViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      ApiKeyValueKey: getValidationMessage(ApiKeyValueKey),
      DataAreaIdValueKey: getValidationMessage(DataAreaIdValueKey),
      TopValueKey: getValidationMessage(TopValueKey),
      SkipValueKey: getValidationMessage(SkipValueKey),
    });
