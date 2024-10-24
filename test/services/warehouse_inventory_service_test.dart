import 'package:flutter_test/flutter_test.dart';
import 'package:d365_integration/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('WarehouseInventoryServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
