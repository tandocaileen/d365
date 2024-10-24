import 'package:d365_integration/models/value_model.dart';

class CustomersResponse {
  CustomersResponse({
    this.odataContext,
    this.odataCount,
    this.value,
    this.lastUpdateDate,
  });

  final dynamic odataContext;
  final int? odataCount;
  final List<Value>? value;
  final DateTime? lastUpdateDate;

  CustomersResponse copyWith({
    String? odataContext,
    int? odataCount,
    List<Value>? value,
    DateTime? lastUpdateDate,
  }) {
    return CustomersResponse(
      odataContext: odataContext ?? this.odataContext,
      odataCount: odataCount ?? this.odataCount,
      value: value ?? this.value,
      lastUpdateDate: lastUpdateDate ?? this.lastUpdateDate,
    );
  }

  factory CustomersResponse.fromJson(Map<String, dynamic> json) {
    return CustomersResponse(
      odataContext: json["@odata.context"],
      odataCount: json["@odata.count"],
      value: json["value"] == null
          ? []
          : List<Value>.from(json["value"]!.map((x) => Value.fromJson(x))),
      lastUpdateDate: DateTime.tryParse(json["LastUpdateDate"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "@odata.context": odataContext,
        "@odata.count": odataCount,
        "value": value?.map((x) => x.toJson()).toList(),
        "LastUpdateDate": lastUpdateDate?.toIso8601String(),
      };
}
