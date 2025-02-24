```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing data from JSON, assuming it has an 'items' key containing a list
      final items = jsonData['items'] as List<dynamic>;

      // Potential bug: items might be null or empty leading to an error
      final firstItem = items[0]; // This line can throw an error if items is empty
      print(firstItem); 
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately, maybe retrying or showing an error message
  }
}
```