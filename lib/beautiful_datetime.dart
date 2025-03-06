import 'package:intl/intl.dart';

/// A class that provides beautiful DateTime formatting options
class BeautifulDateTime {
  final DateTime _dateTime;

  /// Creates a BeautifulDateTime instance with the given DateTime
  BeautifulDateTime(this._dateTime);

  /// Returns the date in a beautiful format (e.g., "March 6, 2024")
  String get beautifulDate {
    return DateFormat('MMMM d, y').format(_dateTime);
  }

  /// Returns the time in 12-hour format (e.g., "3:30 PM")
  String get beautifulTime {
    return DateFormat('h:mm a').format(_dateTime);
  }

  /// Returns the date and time together (e.g., "March 6, 2024 at 3:30 PM")
  String get beautifulDateTime {
    return DateFormat('MMMM d, y \'at\' h:mm a').format(_dateTime);
  }

  /// Returns the date in short format (e.g., "Mar 6, 2024")
  String get shortDate {
    return DateFormat('MMM d, y').format(_dateTime);
  }

  /// Returns the time in 24-hour format (e.g., "15:30")
  String get time24Hour {
    return DateFormat('HH:mm').format(_dateTime);
  }

  /// Returns the date in numeric format (e.g., "03/06/2024")
  String get numericDate {
    return DateFormat('MM/dd/yyyy').format(_dateTime);
  }

  /// Returns the date in ISO format (e.g., "2024-03-06")
  String get isoDate {
    return DateFormat('yyyy-MM-dd').format(_dateTime);
  }

  /// Returns the date in a custom format
  String customFormat(String pattern) {
    return DateFormat(pattern).format(_dateTime);
  }

  /// Returns relative time (e.g., "2 hours ago", "3 days ago")
  String get relativeTime {
    final now = DateTime.now();
    final difference = now.difference(_dateTime);

    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).floor()} years ago';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).floor()} months ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutes ago';
    } else {
      return 'just now';
    }
  }
}
