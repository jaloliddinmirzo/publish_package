import 'package:flutter_test/flutter_test.dart';
import 'package:beautiful_datetime/beautiful_datetime.dart';

void main() {
  group('BeautifulDateTime', () {
    late DateTime testDateTime;
    late BeautifulDateTime beautifulDateTime;

    setUp(() {
      testDateTime = DateTime(2024, 3, 6, 15, 30);
      beautifulDateTime = BeautifulDateTime(testDateTime);
    });

    test('beautifulDate returns correct format', () {
      expect(beautifulDateTime.beautifulDate, 'March 6, 2024');
    });

    test('beautifulTime returns correct format', () {
      expect(beautifulDateTime.beautifulTime, '3:30 PM');
    });

    test('beautifulDateTime returns correct format', () {
      expect(beautifulDateTime.beautifulDateTime, 'March 6, 2024 at 3:30 PM');
    });

    test('shortDate returns correct format', () {
      expect(beautifulDateTime.shortDate, 'Mar 6, 2024');
    });

    test('time24Hour returns correct format', () {
      expect(beautifulDateTime.time24Hour, '15:30');
    });

    test('numericDate returns correct format', () {
      expect(beautifulDateTime.numericDate, '03/06/2024');
    });

    test('isoDate returns correct format', () {
      expect(beautifulDateTime.isoDate, '2024-03-06');
    });

    test('customFormat returns correct format', () {
      expect(beautifulDateTime.customFormat('EEEE, MMMM d, y'),
          'Wednesday, March 6, 2024');
    });

    test('relativeTime returns correct format for recent time', () {
      final now = DateTime.now();
      final recent = now.subtract(const Duration(hours: 2));
      final recentBeautiful = BeautifulDateTime(recent);
      expect(recentBeautiful.relativeTime, '2 hours ago');
    });

    
  });
}
