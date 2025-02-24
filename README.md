# Unhandled Exception: RangeError (index): Invalid value: Valid value range is empty: 0

This repository demonstrates a common error in Dart when handling asynchronous operations and JSON responses. The `fetchData` function fetches data from an API and processes the JSON response.  However, it lacks error handling for scenarios where the `items` list in the JSON response is null or empty. This leads to a `RangeError` when attempting to access `items[0]`. The solution adds robust checks to prevent this error.

## How to Reproduce
1. Clone this repository.
2. Run `fetchData` function.  If the API returns an empty `items` list, or an empty JSON, the original code will throw an exception. The solution demonstrates how to fix the error.