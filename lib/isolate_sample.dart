//https://medium.com/gitconnected/eliminating-ui-jank-flutter-concurrency-with-isolate-and-compute-e9fdb0d5ca36

// This function spawns an isolate, executes the _counterLoop function with a specified length,
// sends the result back to the main isolate, and returns the computed counter.
import 'dart:isolate';

import 'package:flutter/foundation.dart';

Future<int> isolateRun() async {
  // Creating a ReceivePort to listen for messages from the spawned isolate
  final receivePort = ReceivePort();

  // Spawning an isolate to execute the _counterLoop function
  Isolate.spawn((SendPort sendPort) {
    // Performing a computation in the spawned isolate and sending the result back
    int counter = _counterLoop(100000000);
    sendPort.send(counter);
  }, receivePort.sendPort);

  // Waiting for the result from the spawned isolate
  final counter = await receivePort.first;

  // Closing the ReceivePort after receiving the result
  receivePort.close();

  // Returning the computed counter to the calling code
  return counter;
}

// Simple function to perform a loop and return the counter value
int _counterLoop(int length) {
  int counter = 0;

  // Simulating a computationally intensive task
  for (int i = 0; i < length; i++) {
    counter++;
  }

  // Returning the computed counter value
  return counter;
}

// This function utilizes the compute function to execute the _counterLoop function
// with a specified length in a separate isolate, and returns the computed counter.
Future<int> computeRun() async {
  // Utilizing the compute function to run _counterLoop in a separate isolate
  // and passing the length as the argument
  return await compute((length) => _counterLoop(length), 100000000);
}


//https://github.com/luthfiarifin/flutter_concurrency_workout