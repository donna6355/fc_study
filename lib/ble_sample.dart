import 'dart:async';
import 'dart:io';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter/material.dart';

class BluetoothSample extends StatefulWidget {
  const BluetoothSample({super.key});

  @override
  State<BluetoothSample> createState() => _BluetoothSampleState();
}

class _BluetoothSampleState extends State<BluetoothSample> {
  BluetoothAdapterState _adapterState = BluetoothAdapterState.unknown;

  late StreamSubscription<BluetoothAdapterState> _adapterStateStateSubscription;

  @override
  void initState() {
    super.initState();
    _adapterStateStateSubscription =
        FlutterBluePlus.adapterState.listen((state) {
      if (mounted) {
        setState(() {
          _adapterState = state;
        });
      }
    });
  }

  @override
  void dispose() {
    _adapterStateStateSubscription.cancel();
    super.dispose();
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   flutterBlueSettings();
  // }
  // String labelText = '';
  // List<BluetoothDevice> selectedBluetoothItem = [];
  // void flutterBlueSettings() async {
  //   // first, check if bluetooth is supported by your hardware
  //   if (await FlutterBluePlus.isSupported == false) {
  //     print("Bluetooth not supported by this device");
  //     return;
  //   }

  //   // handle bluetooth on & off
  //   FlutterBluePlus.adapterState.listen(
  //     (BluetoothAdapterState state) {
  //       print(state);
  //       if (state == BluetoothAdapterState.on) {
  //         // usually start scanning, connecting, etc
  //         flutterBlueInit();
  //       } else {
  //         // show an error to the user, etc
  //         print('filaed to listen adapterstate');
  //       }
  //     },
  //   );

  //   // turn on bluetooth ourself if we can
  //   if (Platform.isAndroid) {
  //     await FlutterBluePlus.turnOn();
  //   }
  // }

  // void flutterBlueInit() async {
  //   onStartScan();

  //   print('try connection');
  //   // listen to scan results
  //   FlutterBluePlus.scanResults.listen((results) async {
  //     if (results.isNotEmpty) {
  //       ScanResult r = results.last; // the most recently found device
  //       if (r.device.platformName == "WaterPump Ctlr") {
  //         FlutterBluePlus.connectedDevices.add(r.device);
  //         await r.device.connect().then((value) {
  //           labelText = 'Qua에  연결되었습니다!';

  //           selectedBluetoothItem.add(r.device);
  //         });

  //         onStopScan();
  //         setState(() {});
  //       }
  //     }
  //   }, onError: (e) => print(e));

  //   await FlutterBluePlus.adapterState
  //       .where((val) => val == BluetoothAdapterState.on)
  //       .first;
  // }

  // Future onStartScan() async {
  //   int divisor = Platform.isAndroid ? 8 : 1;
  //   await FlutterBluePlus.startScan(
  //       timeout: const Duration(seconds: 7),
  //       continuousUpdates: true,
  //       continuousDivisor: divisor);
  //   setState(() {});
  // }

  // Future onStopScan() async {
  //   FlutterBluePlus.stopScan();
  // }

  @override
  Widget build(BuildContext context) {
    Widget screen = Center(
      child: Text(
        _adapterState == BluetoothAdapterState.on
            ? 'SCANNING'
            : _adapterState.toString(),
      ),
    );

    return MaterialApp(
      color: Colors.lightBlue,
      home: Scaffold(body: screen),
      navigatorObservers: [BluetoothAdapterStateObserver()],
    );
  }
}

//
// This observer listens for Bluetooth Off and dismisses the DeviceScreen
//
class BluetoothAdapterStateObserver extends NavigatorObserver {
  StreamSubscription<BluetoothAdapterState>? _adapterStateSubscription;

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (route.settings.name == '/DeviceScreen') {
      // Start listening to Bluetooth state changes when a new route is pushed
      _adapterStateSubscription ??=
          FlutterBluePlus.adapterState.listen((state) {
        if (state != BluetoothAdapterState.on) {
          // Pop the current route if Bluetooth is off
          navigator?.pop();
        }
      });
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    // Cancel the subscription when the route is popped
    _adapterStateSubscription?.cancel();
    _adapterStateSubscription = null;
  }
}
