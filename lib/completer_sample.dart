import 'dart:async';

void main() {
  // Step 1: Create a Completer
  Completer<String> completer = Completer<String>();

  // Step 2: Simulate an asynchronous operation
  simulateAsyncOperation(completer);

  // Step 3: Use the Future returned by the Completer
  completer.future.then((value) {
    print('Received result: $value');
  }).catchError((error) {
    print('Error occurred: $error');
  });
}

// Function to simulate an asynchronous operation
void simulateAsyncOperation(Completer<String> completer) {
  // Simulating a delayed operation (e.g., fetching data)
  Future.delayed(Duration(seconds: 2), () {
    // Completing the Future with a result
    completer.complete('Data loaded successfully');

    // Handle errors by completing with an error
    // completer.completeError('failed to load data');
  });
}


//https://blog.stackademic.com/power-of-completer-in-dart-and-flutter-c72c7031710b