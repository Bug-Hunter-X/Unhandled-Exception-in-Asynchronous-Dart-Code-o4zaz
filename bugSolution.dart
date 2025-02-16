```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Provide more context in the exception message
      throw Exception('Failed to load data. Status code: ${response.statusCode}, Body: ${response.body}');
    }
  } catch (e, stacktrace) {
    // Log the detailed error and stacktrace
    print('Error: $e');
    print('Stacktrace: $stacktrace');
    // Consider custom error handling based on the type of exception
    if (e is SocketException) {
        print('Network Error: Check your internet connection.');
    } else if (e is FormatException) {
        print('Data Format Error. The response may not be valid JSON.');
    }
    // Optionally, rethrow the exception after logging or handling
    // rethrow;
  }
}
```