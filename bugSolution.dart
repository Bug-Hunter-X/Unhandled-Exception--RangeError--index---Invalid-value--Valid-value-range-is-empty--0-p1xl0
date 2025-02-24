```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final items = jsonData['items'];

      //Check for null and empty list
      if (items != null && items is List && items.isNotEmpty) {
        final firstItem = items[0];
        print(firstItem);
      } else {
        print('No items found in the response.');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```