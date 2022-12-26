import 'package:test/test.dart';
import "../../lib/mocks/mock_location.dart";

void main() {
  test("test FetchAny", () {
    final mockLocation = MockLocation.FetchAny();
    expect(mockLocation, isNotNull);
    expect(mockLocation.name, isNotEmpty);
  });

  test("test FetchAll", () {
    final mockLocations = MockLocation.FetchAll();
    expect(mockLocations.length, greaterThan(0));
    expect(mockLocations[0].name, isNotEmpty);
  });

  test('test fetch', () {
    final mockLocation = MockLocation.fetch(0);
    expect(mockLocation, isNotNull);
    expect(mockLocation.name, isNotEmpty);
  });
}
