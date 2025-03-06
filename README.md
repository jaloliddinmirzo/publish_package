<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# Beautiful DateTime

A Flutter package that provides beautiful and flexible DateTime formatting options.

## Features

- Beautiful date formatting (e.g., "March 6, 2024")
- Time formatting in 12-hour and 24-hour formats
- Combined date and time formatting
- Short date format
- Numeric date format
- ISO date format
- Custom format support
- Relative time formatting (e.g., "2 hours ago")

## Getting Started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  beautiful_datetime: ^0.0.1
```

## Usage

```dart
import 'package:beautiful_datetime/beautiful_datetime.dart';

void main() {
  final now = DateTime.now();
  final beautifulDateTime = BeautifulDateTime(now);

  // Get beautiful date
  print(beautifulDateTime.beautifulDate); // March 6, 2024

  // Get beautiful time
  print(beautifulDateTime.beautifulTime); // 3:30 PM

  // Get combined date and time
  print(beautifulDateTime.beautifulDateTime); // March 6, 2024 at 3:30 PM

  // Get short date
  print(beautifulDateTime.shortDate); // Mar 6, 2024

  // Get 24-hour time
  print(beautifulDateTime.time24Hour); // 15:30

  // Get numeric date
  print(beautifulDateTime.numericDate); // 03/06/2024

  // Get ISO date
  print(beautifulDateTime.isoDate); // 2024-03-06

  // Get relative time
  print(beautifulDateTime.relativeTime); // just now

  // Use custom format
  print(beautifulDateTime.customFormat('EEEE, MMMM d, y')); // Wednesday, March 6, 2024
}
```

## Additional Information

This package uses the `intl` package for formatting and provides a clean, easy-to-use API for DateTime formatting in Flutter applications.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
