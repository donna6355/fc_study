import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class DialApp extends StatefulWidget {
  const DialApp({super.key});

  @override
  State<DialApp> createState() => _DialAppState();
}

class _DialAppState extends State<DialApp> with TickerProviderStateMixin {
  var renderOverlay = true;
  var visible = true;
  var switchLabelPosition = false;
  var extend = false;
  var mini = false;
  var rmicons = false;
  var customDialRoot = false;
  var closeManually = false;
  var useRAnimation = true;
  var isDialOpen = ValueNotifier<bool>(false);
  var speedDialDirection = SpeedDialDirection.up;
  var buttonSize = const Size(56.0, 56.0);
  var childrenButtonSize = const Size(56.0, 56.0);
  var selectedfABLocation = FloatingActionButtonLocation.endDocked;
  var items = [
    FloatingActionButtonLocation.startFloat,
    FloatingActionButtonLocation.startDocked,
    FloatingActionButtonLocation.centerFloat,
    FloatingActionButtonLocation.endFloat,
    FloatingActionButtonLocation.endDocked,
    FloatingActionButtonLocation.startTop,
    FloatingActionButtonLocation.centerTop,
    FloatingActionButtonLocation.endTop,
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isDialOpen.value) {
          isDialOpen.value = false;
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Speed Dial Example"),
        ),
        body: Center(child: Text('SPEED DIAL SAMPLE'),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: SpeedDial(
          // animatedIcon: AnimatedIcons.menu_close,
          // animatedIconTheme: IconThemeData(size: 22.0),
          // / This is ignored if animatedIcon is non null
          // child: Text("open"),
          // activeChild: Text("close"),
          icon: Icons.add,
          activeIcon: Icons.close,
          spacing: 3,
          mini: mini,
          openCloseDial: isDialOpen,
          childPadding: const EdgeInsets.all(5),
          spaceBetweenChildren: 4,
          dialRoot: customDialRoot
              ? (ctx, open, toggleChildren) {
                  return ElevatedButton(
                    onPressed: toggleChildren,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22, vertical: 18),
                    ),
                    child: const Text(
                      "Custom Dial Root",
                      style: TextStyle(fontSize: 17),
                    ),
                  );
                }
              : null,
          buttonSize:
              buttonSize, // it's the SpeedDial size which defaults to 56 itself
          // iconTheme: IconThemeData(size: 22),
          label: extend
              ? const Text("Open")
              : null, // The label of the main button.
          /// The active label of the main button, Defaults to label if not specified.
          activeLabel: extend ? const Text("Close") : null,

          /// Transition Builder between label and activeLabel, defaults to FadeTransition.
          // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
          /// The below button size defaults to 56 itself, its the SpeedDial childrens size
          childrenButtonSize: childrenButtonSize,
          visible: visible,
          direction: speedDialDirection,
          switchLabelPosition: switchLabelPosition,

          /// If true user is forced to close dial manually
          closeManually: closeManually,

          /// If false, backgroundOverlay will not be rendered.
          renderOverlay: renderOverlay,
          // overlayColor: Colors.black,
          // overlayOpacity: 0.5,
          onOpen: () => debugPrint('OPENING DIAL'),
          onClose: () => debugPrint('DIAL CLOSED'),
          useRotationAnimation: useRAnimation,
          tooltip: 'Open Speed Dial',
          heroTag: 'speed-dial-hero-tag',
          // foregroundColor: Colors.black,
          // backgroundColor: Colors.white,
          // activeForegroundColor: Colors.red,
          // activeBackgroundColor: Colors.blue,
          elevation: 8.0,
          animationCurve: Curves.elasticInOut,
          isOpenOnStart: false,
          shape: customDialRoot
              ? const RoundedRectangleBorder()
              : const StadiumBorder(),
          // childMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          children: [
            SpeedDialChild(
              child: !rmicons ? const Icon(Icons.accessibility) : null,
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              label: 'First',
              onTap: () => setState(() => rmicons = !rmicons),
              onLongPress: () => debugPrint('FIRST CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: !rmicons ? const Icon(Icons.brush) : null,
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,
              label: 'Second',
              onTap: () => debugPrint('SECOND CHILD'),
            ),
            SpeedDialChild(
              child: !rmicons ? const Icon(Icons.margin) : null,
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
              label: 'Show Snackbar',
              visible: true,
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text(("Third Child Pressed")))),
              onLongPress: () => debugPrint('THIRD CHILD LONG PRESS'),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Row(
            mainAxisAlignment: selectedfABLocation ==
                    FloatingActionButtonLocation.startDocked
                ? MainAxisAlignment.end
                : selectedfABLocation == FloatingActionButtonLocation.endDocked
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                icon: const Icon(Icons.nightlight_round),
                tooltip: "Switch Dark",
                onPressed: () => {
                   ThemeMode.dark
                      
                },
              ),
              ValueListenableBuilder<bool>(
                  valueListenable: isDialOpen,
                  builder: (ctx, value, _) => IconButton(
                        icon: const Icon(Icons.open_in_browser),
                        tooltip: (!value ? "Open" : "Close") + (" Speed Dial"),
                        onPressed: () => {isDialOpen.value = !isDialOpen.value},
                      ))
            ],
          ),
        ),
      ),
    );
  }
}

extension EnumExt on FloatingActionButtonLocation {
  /// Get Value of The SpeedDialDirection Enum like Up, Down, etc. in String format
  String get value => toString().split(".")[1];
}