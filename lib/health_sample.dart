import 'package:health/health.dart';

Future<void> healthConfigNGetSteps() async {
  // configure the health plugin before use.
  Health().configure(useHealthConnectIfAvailable: true);

  // define the types to get
  var types = [HealthDataType.STEPS];

  // requesting access to the data types before reading them
  bool requested = await Health().requestAuthorization(types);
  if (!requested) return;

  var now = DateTime.now();

  // fetch health data from the last 24 hours
  // List<HealthDataPoint> healthData = await Health().getHealthDataFromTypes(
  //   types: types,
  //   startTime: now.subtract(const Duration(days: 1)),
  //   endTime: now,
  // );

  // request permissions to write steps and blood glucose
  var permissions = [HealthDataAccess.READ];
  await Health().requestAuthorization(types, permissions: permissions);

  // write steps and blood glucose
  // bool success =
  //     await Health().writeHealthData(10, HealthDataType.STEPS, now, now);
  // success = await Health()
  //     .writeHealthData(3.1, HealthDataType.BLOOD_GLUCOSE, now, now);

  // get the number of steps for today
  var midnight = DateTime(now.year, now.month, now.day);
  int? steps = await Health().getTotalStepsInInterval(midnight, now);
}
